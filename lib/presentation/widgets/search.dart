import 'package:flutter/cupertino.dart';
import 'package:gauthentication/core/constants/padding.dart';
import 'package:gauthentication/core/theme/colors.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key, required this.label,required this.onChanged});
  final String label;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: kpadding10,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CupertinoSearchTextField(
            onChanged: onChanged,
            borderRadius: BorderRadius.circular(20),
            itemSize: 50,
            padding: kpadding10,
            backgroundColor: kgreycolor,
            placeholder: label,
            itemColor: kblack,
            prefixIcon: Icon(
              CupertinoIcons.search_circle_fill,
              color: kyellowcolor,
            ),
            suffixIcon: Icon(
              CupertinoIcons.xmark_circle_fill,
              color: kbluecolor,
            ),
          )
        ],
      ),
    );
  }
}
