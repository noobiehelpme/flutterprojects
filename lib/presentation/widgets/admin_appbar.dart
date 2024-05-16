import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class KAppBar extends StatelessWidget with PreferredSizeWidget {
  KAppBar({super.key, required this.size});
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpadding16,
      child: AppBar(
        toolbarHeight: 120,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        backgroundColor: kgreycolor,
        leading: Padding(
          padding: kpadding10,
          child: CircleAvatar(
            backgroundColor: kdarkbluecolor,
            child: PopupMenuButton(
              icon: const Icon(Icons.notes),
              color: kgreycolor,
              itemBuilder: (context) => [
                PopupMenuItem<int>(
                  value: 0,
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.logout,
                      color: Color.fromARGB(255, 228, 18, 18),
                    ),
                  ),
                ),
              ],
              onSelected: (item) => {log(selectedItem(context, item))},
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Nithya Nandanan',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: kfont,
                      color: kdarkbluecolor),
                ),
                Text(
                  'nithyaAndanan@gmail.com',
                  style: TextStyle(fontFamily: kfont, color: kblack),
                ),
                Text(
                  'Admin',
                  style: TextStyle(fontFamily: kfont, color: kblack),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  selectedItem(BuildContext context, item) {
    (item) {
      log("User Logged out");
    };
  }

  @override
  Size get preferredSize => size;
}
//const Size(double.maxFinite, 120)