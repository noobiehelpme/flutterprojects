import 'package:flutter/material.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class RightWidget extends StatelessWidget {
  const RightWidget(
      {super.key,
      required this.title,
      required this.onDelete,
      required this.onEdit,
      this.subtitile});
  final void Function() onDelete;
  final void Function() onEdit;
  final String title;
  final String? subtitile;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: kpadding8,
        child: SizedBox(
          width: 370,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            color: kgreycolor,
            child: ListTile(
              contentPadding:const EdgeInsets.all(16),
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      title,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: kfont,
                          color: kdarkbluecolor),
                    ),
                  ),
                  
                  subtitile == null
                      ? const SizedBox(
                          width: 160,
                        )

                      : Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            subtitile!,
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: kfont,
                                color: kdarkbluecolor),
                          ),
                      ),
                ],
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: CircleAvatar(
                      backgroundColor: kwhite,
                      radius: 20,
                      child: IconButton(
                        onPressed: onEdit,
                        icon: const Icon(
                          Icons.edit,
                          color: kblack,
                          size: 25,
                        ),
                      ), //Text
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: kwhite,
                    radius: 20,
                    child: IconButton(
                      onPressed: onDelete,
                      icon: const Icon(
                        Icons.delete,
                        color: kblack,
                        size: 25,
                      ),
                    ), //Text
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
