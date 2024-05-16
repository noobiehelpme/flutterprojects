import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/presentation/widgets/check_box.dart';
import 'package:gauthentication/presentation/widgets/custom_activitybar.dart';
import 'package:gauthentication/presentation/widgets/custom_appbar.dart';
import 'package:gauthentication/presentation/widgets/elevated_button.dart';
import 'package:gauthentication/presentation/widgets/texts.dart';

class AddRoleView extends StatelessWidget {
  AddRoleView({super.key});
  final ValueNotifier<int> selectedIndex = ValueNotifier(0);
  final List<String> selects = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: SAppBar(
          size: const Size(double.maxFinite, 120),
        ),
        body: Column(
          children: [
            const Padding(
              padding: kpadding8,
              child: ConText(hinttext: "Add Roles"),
            ),
            // const TextformWidget(
            //   labeltext: "Role ID :",
            // ),
            // const KTextFormField(
            //   labeltext: "Role : ",
            // ),
            // const SearchBar(label: 'Search Activities'),
            const CustomActivityBar(
              hinttext: 'Activities',
              hinttext3: 'Select',
            ),
            Expanded(child: ListView.builder(
              itemBuilder: (context, index) {
                return const Checkboxwidget(
                    title: "Branch Manager", ids: [],  id: 0,);
              },
            )),
            Button(
              buttontext: "Save",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
