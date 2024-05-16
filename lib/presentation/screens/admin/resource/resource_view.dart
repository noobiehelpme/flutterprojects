import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/resource/resource_bloc.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';
import 'package:gauthentication/presentation/screens/admin/resource/add_resource_view.dart';
import 'package:gauthentication/presentation/screens/admin/resource/edit_resource_view.dart';
import 'package:gauthentication/presentation/widgets/alert_box.dart';
import 'package:gauthentication/presentation/widgets/custom_appbar.dart';
import 'package:gauthentication/presentation/widgets/empty_widget.dart';
import 'package:gauthentication/presentation/widgets/head_customlist.dart';
import 'package:gauthentication/presentation/widgets/kloading.dart';
import 'package:gauthentication/presentation/widgets/rights_widget.dart';
import 'package:gauthentication/presentation/widgets/search.dart';
import 'package:gauthentication/presentation/widgets/texts.dart';

class ResourceView extends StatelessWidget {
  const ResourceView({super.key});

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
                  child: ConText(hinttext: "Resource"),
                ),
                SearchBar(
                  label: 'Search Resource',
                  onChanged: (searchedResource) {
                    if (searchedResource.isEmpty) {
                      context
                          .read<ResourceBloc>()
                          .add(const ResourceEvent.getResource());
                    } else {
                      context.read<ResourceBloc>().add(
                          ResourceEvent.searchResource(
                              resource: searchedResource));
                    }
                  },
                ),
                const HeadRights(
                  hinttext: 'Resource',
                  hinttext2: 'Edit',
                  hinttext3: 'Delete',
                ),
                Expanded(
                  child: Center(
                    child: BlocBuilder<ResourceBloc, ResourceState>(
                      builder: (context, state) {
                        if (state.isloading) {
                          return const KLoading();
                        }
                        return state.resourceModel.fold(
                          () {
                            return ElevatedButton(
                              onPressed: () {
                                context
                                    .read<ResourceBloc>()
                                    .add(const ResourceEvent.getResource());
                              },
                              child: const Text('Retry'),
                            );
                          },
                          (resource) {
                            return resource.fold(
                              (l) {
                                return ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<ResourceBloc>()
                                        .add(const ResourceEvent.getResource());
                                  },
                                  child: const Text('Retry'),
                                );
                              },
                              (r) {
                                if (r.data.isEmpty) {
                                  return const KEmpty();
                                }
                                return ListView.builder(
                                  itemCount: r.data.length,
                                  itemBuilder: (context, index) {
                                    return RightWidget(
                                      title: r.data[index].resource,
                                      onDelete: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            debugPrint('worked');
                                            return AlertDialogWidget(
                                              dialog: 'Confirm Delete?',
                                              onYes: () {
                                                context
                                                    .read<ResourceBloc>()
                                                    .add(
                                                      ResourceEvent
                                                          .deleteResource(
                                                              id: r.data[index]
                                                                  .resourceId),
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
                                            return EditResourceView(
                                              resourceController:
                                                  TextEditingController(
                                                      text: r.data[index]
                                                          .resource),
                                              resourceId:
                                                  r.data[index].resourceId,
                                            );
                                          },
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: kdarkbluecolor,
          onPressed: () async {
            showDialog(context: context, builder: (_) => AddResourceView());
          },
          child: const Icon(Icons.add, size: 25),
        ),
      ),
    );
  }
}
