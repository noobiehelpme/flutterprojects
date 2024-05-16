import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeSample extends StatelessWidget {
  const HomeSample({super.key});

  @override
  Widget build(BuildContext context) {
    List task = ['asd', 'asd'];
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    primary: false,
                    itemCount: task.length,
                    itemBuilder: ((context, index) {
                      return Row(
                        children: [Text(task[index])],
                      );
                    }))
              ],
            ),
          ),
        ],
      )),
    );
  }
}
