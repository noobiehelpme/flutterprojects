import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/activity/activity_bloc.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';
import 'package:gauthentication/presentation/screens/admin/activity/add_activity_view.dart';
import 'package:gauthentication/presentation/screens/admin/activity/edit_activity_view.dart';
import 'package:gauthentication/presentation/widgets/alert_box.dart';
import 'package:gauthentication/presentation/widgets/custom_appbar.dart';
import 'package:gauthentication/presentation/widgets/empty_widget.dart';
import 'package:gauthentication/presentation/widgets/head_customlist.dart';
import 'package:gauthentication/presentation/widgets/kloading.dart';
import 'package:gauthentication/presentation/widgets/rights_widget.dart';
import 'package:gauthentication/presentation/widgets/search.dart';
import 'package:gauthentication/presentation/widgets/texts.dart';

class ActivityView extends StatelessWidget {
  const ActivityView({super.key});

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
                  child: ConText(hinttext: "Activities"),
                ),
                SearchBar(
                  label: 'Search Activities',
                  onChanged: (searchActivity) {
                    if (searchActivity.isEmpty) {
                      context
                          .read<ActivityBloc>()
                          .add(const ActivityEvent.getActivity());
                    } else {
                      context.read<ActivityBloc>().add(
                          ActivityEvent.searchActivity(
                              activity: searchActivity));
                    }
                  },
                ),
                const HeadRights(
                  hinttext: 'Activities',
                  hinttext2: 'Edit',
                  hinttext3: 'Delete',
                ),
                Expanded(
                  child: Center(
                    child: BlocBuilder<ActivityBloc, ActivityState>(
                      builder: (context, state) {
                        if (state.isloading) {
                          return const KLoading();
                        }
                        return state.activityModel.fold(() {
                          return ElevatedButton(
                            onPressed: () {
                              context
                                  .read<ActivityBloc>()
                                  .add(const ActivityEvent.getActivity());
                            },
                            child: const Text('Retry'),
                          );
                        }, (activity) {
                          return activity.fold((l) {
                            return ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ActivityBloc>()
                                    .add(const ActivityEvent.getActivity());
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
                                      subtitile: r.data[index].moduleName,
                                      title: r.data[index].activity,
                                      onDelete: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialogWidget(
                                              dialog: 'Confirm Delete?',
                                              onYes: () {
                                                context
                                                    .read<ActivityBloc>()
                                                    .add(
                                                      ActivityEvent
                                                          .deleteActivity(
                                                              activityid: r
                                                                  .data[index]
                                                                  .activityId),
                                                    );
                                                Navigator.pop(context);
                                              },
                                            );
                                          },
                                        );
                                      },
                                      onEdit: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return EditActivityView(
                                                activityController:
                                                    TextEditingController(
                                                        text: r.data[index]
                                                            .activity),
                                                moduleId:
                                                    r.data[index].moduleId,
                                                activityId:
                                                    r.data[index].activityId);
                                          },
                                        );
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
                  return AddActivityView();
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
