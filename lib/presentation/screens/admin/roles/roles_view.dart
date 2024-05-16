import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/role/role_bloc.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';
import 'package:gauthentication/presentation/screens/admin/roles/add_roles_view.dart';
import 'package:gauthentication/presentation/widgets/alert_box.dart';
import 'package:gauthentication/presentation/widgets/custom_appbar.dart';
import 'package:gauthentication/presentation/widgets/empty_widget.dart';
import 'package:gauthentication/presentation/widgets/head_customlist.dart';
import 'package:gauthentication/presentation/widgets/kloading.dart';
import 'package:gauthentication/presentation/widgets/rights_widget.dart';
import 'package:gauthentication/presentation/widgets/search.dart';
import 'package:gauthentication/presentation/widgets/texts.dart';

class RoleView extends StatelessWidget {
  const RoleView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SAppBar(
          size: const Size(double.maxFinite, 120),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 120,
            child: Column(
              children: [
                const Padding(
                  padding: kpadding10,
                  child: ConText(hinttext: "Roles"),
                ),
                SearchBar(
                  label: 'Search Roles',
                  onChanged: (searchRole) {
                    if (searchRole.isEmpty) {
                      context.read<RoleBloc>().add(const RoleEvent.getRole());
                    } else {
                      context
                          .read<RoleBloc>()
                          .add(RoleEvent.searchRole(rolename: searchRole));
                    }
                  },
                ),
                const HeadRights(
                  hinttext: 'Role',
                  hinttext2: 'Edit',
                  hinttext3: 'Delete',
                ),
                Expanded(
                  child: Center(
                    child: BlocBuilder<RoleBloc, RoleState>(
                      builder: (context, state) {
                        if (state.isloading) {
                          return const KLoading();
                        }
                        return state.roleModel.fold(() {
                          return ElevatedButton(
                            onPressed: () {
                              context
                                  .read<RoleBloc>()
                                  .add(const RoleEvent.getRole());
                            },
                            child: const Text('Retry'),
                          );
                        }, (activity) {
                          return activity.fold((l) {
                            return ElevatedButton(
                              onPressed: () {
                                context
                                    .read<RoleBloc>()
                                    .add(const RoleEvent.getRole());
                              },
                              child: const Text('Retry'),
                            );
                          }, (r) {
                            if (r.data.isEmpty) {
                              return const KEmpty();
                            }
                            return ListView.builder(
                                itemCount: r.data.length,
                                itemBuilder: (context, index) {
                                  return RightWidget(
                                      // subtitile: r.data[index].moduleName,
                                      title: r.data[index].rolename,
                                      onDelete: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialogWidget(
                                              dialog: 'Confirm Delete?',
                                              onYes: () {
                                                context.read<RoleBloc>().add(
                                                      RoleEvent.deleteRole(
                                                          roleid: r.data[index]
                                                              .roleid),
                                                    );
                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                        );
                                      },
                                      onEdit: () {
                                        // showDialog(
                                        //   context: context,
                                        //   builder: (context) {
                                        //     return EditActivityView(
                                        //         activityController:
                                        //             TextEditingController(
                                        //                 text: r.data[index]
                                        //                     .activity),
                                        //         moduleId:
                                        //             r.data[index].moduleId,
                                        //         activityId:
                                        //             r.data[index].activityId);
                                        //   },
                                        // );
                                      });
                                });
                          });
                        });
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kdarkbluecolor,
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AddRoleView();
                });
          },
          child: const Icon(
            Icons.add,
            size: 25,
          ),
        ),
      ),
    );
  }
}
