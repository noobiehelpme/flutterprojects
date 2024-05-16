import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gauthentication/application/admin/resource/resource_bloc.dart';
import 'package:gauthentication/core/theme/colors.dart';
import 'package:gauthentication/presentation/widgets/button.dart';

class EditResourceView extends StatelessWidget {
  EditResourceView(
      {super.key, required this.resourceController, required this.resourceId});
  final _key = GlobalKey<FormState>();
  final TextEditingController resourceController;
  final num resourceId;

  @override
  Widget build(BuildContext context) {
    return  Form(
          key: _key,
          child: AlertDialog(
            backgroundColor: kgreycolor,
            shape: const RoundedRectangleBorder(
                side: BorderSide(width: 0),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            title: Text(
              'Resource',
              style:
                  TextStyle(color: kdarkbluecolor, fontWeight: FontWeight.bold),
            ),
            content: TextFormField(
              controller: resourceController,
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
                hintText: 'Add Resource',
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
                  context.read<ResourceBloc>().add(ResourceEvent.editResource(
                      resource: resourceController.text, id: resourceId));
                  Navigator.pop(context);
                },
              ),
            ],
          ),
    );
  }
}
