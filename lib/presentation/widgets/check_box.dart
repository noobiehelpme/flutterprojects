import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class Checkboxwidget extends StatelessWidget {
  const Checkboxwidget(
      {super.key, required this.ids, required this.title, required this.id});
  final String title;
  final num id;
  final List<num> ids;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> check =
        ValueNotifier(ids.contains(id));
    return ValueListenableBuilder(
      valueListenable: check,
      builder: (BuildContext context, dynamic value, Widget? child) {
        debugPrint('selects:- $ids');
        return Padding(
          padding: kpadding5,
          child: CheckboxListTile(
              title: Text(
                title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: kdarkbluecolor),
              ),
              value: value,
              activeColor: kdarkbluecolor,
              checkColor: Colors.white,
              onChanged: (value) {
                check.value = value!;
                if (value == true) {
                  ids.add(id);
                } else {
                  ids.remove(id);
                }
              }),
        );
      },
    );
  }
}
