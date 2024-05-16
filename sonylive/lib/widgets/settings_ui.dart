import 'package:flutter/material.dart';


class SettingUi extends StatelessWidget {
  SettingUi({super.key});
  List<IconData> icons = [Icons.star, Icons.notifications, Icons.live_tv,Icons.settings,Icons.list_alt,Icons.view_list,Icons.question_mark,];
  List items = ['Subscribe Now', 'Notification Inbox', 'Activate TV','Settings & Preferences','Terms of use','Privacy Policy','Help & FAQs'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView.separated(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(items[index],style: TextStyle(color: Colors.white),),
                  leading: Icon(icons[index],color: Colors.white,),
                );
              },
              separatorBuilder: (context, index) {
                return Divider(color: Colors.white,);
              },
              itemCount: 7)),
    );
  }
}
