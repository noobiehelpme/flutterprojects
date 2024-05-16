import 'package:gauthentication/presentation/widgets/empty_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/activity/activity_bloc.dart';
import 'package:gauthentication/application/admin/resource/resource_bloc.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/presentation/widgets/check_box.dart';
import 'package:gauthentication/presentation/widgets/custom_activitybar.dart';
import 'package:gauthentication/presentation/widgets/custom_appbar.dart';
import 'package:gauthentication/presentation/widgets/elevated_button.dart';
import 'package:gauthentication/presentation/widgets/kloading.dart';
import 'package:gauthentication/presentation/widgets/ksnackbar.dart';
import 'package:gauthentication/presentation/widgets/search.dart';
import 'package:gauthentication/presentation/widgets/text_formfield.dart';
import 'package:gauthentication/presentation/widgets/texts.dart';

class AddActivityView extends StatelessWidget {
  AddActivityView({super.key});
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);
  final List<num> selectedResources = [];
  final activityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SAppBar(
          size: const Size(double.maxFinite, 120),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 136,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                const Padding(
                  padding: kpadding8,
                  child: ConText(hinttext: "Add Activity"),
                ),
                KTextFormField(
                  controller: activityController,
                  validator: (p0) {},
                  labeltext: "Activity : ",
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
                const CustomActivityBar(
                  hinttext: 'Resources',
                  hinttext3: 'Select',
                ),
                Expanded(child: Center(
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
                                  return Checkboxwidget(
                                    ids: selectedResources,
                                    title: r.data[index].resource,
                                    id: r.data[index].resourceId,
                                  );
                                },
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                )),
                Button(
                  buttontext: "Save",
                  onPressed: () {
                    if (activityController.text.isEmpty ||
                        selectedResources.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          kSnackbar(title: 'The fields are requiurd !'));
                    } else {
                      context.read<ActivityBloc>().add(
                          ActivityEvent.addActivity(
                              activity: activityController.text,
                              moduleId: selectedResources));
                      Navigator.pop(context);
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
