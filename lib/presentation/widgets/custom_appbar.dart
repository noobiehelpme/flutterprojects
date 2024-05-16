import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class SAppBar extends StatelessWidget with PreferredSizeWidget {
  SAppBar({
    super.key,
    required this.size,
  });
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
                radius: 20,
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_sharp,
                    color: kwhite,
                    size: 20,
                  ),
                ) //Text
                )),
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
                      color: kbluecolor),
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

  @override
  Size get preferredSize => size;
}
//const Size(double.maxFinite, 120)