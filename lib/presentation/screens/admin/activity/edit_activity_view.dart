import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/activity/activity_bloc.dart';
import 'package:gauthentication/core/theme/colors.dart';
import 'package:gauthentication/presentation/widgets/button.dart';

class EditActivityView extends StatelessWidget {
  EditActivityView(
      {super.key,
      required this.activityController,
      required this.moduleId,
      required this.activityId});
  final _key = GlobalKey<FormState>();
  final TextEditingController activityController;
  final num moduleId;
  final num activityId;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: AlertDialog(
        backgroundColor: kgreycolor,
        shape: const RoundedRectangleBorder(
            side: BorderSide(width: 0),
            borderRadius: BorderRadius.all(Radius.circular(15))),
        title: Text(
          'Activity',
          style: TextStyle(color: kdarkbluecolor, fontWeight: FontWeight.bold),
        ),
        content: TextFormField(
          controller: activityController,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'This field is required ';
            }
            return null;
          },
          decoration: const InputDecoration(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(),
            hintText: 'Add Activity',
          ),
        ),
        actions: <Widget>[
          Button2(
            buttontext: 'Cancel',
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          Button2(
            buttontext: 'Save',
            onPressed: () {
              if (_key.currentState!.validate() == false) {
                return;
              }
              context.read<ActivityBloc>().add(ActivityEvent.editActivity(
                  activity: activityController.text,
                  moduleId: moduleId,
                  activityid: activityId));
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
