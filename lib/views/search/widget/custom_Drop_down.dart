import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_style.dart';

// ignore: must_be_immutable
class CustomDropDown extends StatelessWidget {
  CustomDropDown(
      {super.key,
      required this.title,
      required this.items,
      required this.hint});
  String title, hint;
  List<DropdownMenuEntry<String>> items;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, con) {
      return DropdownMenu<String>(
          width: con.maxWidth,
          textStyle: Styles.textStyle,
          inputDecorationTheme: InputDecorationTheme(
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Styles.primaryColor),
              ),
              contentPadding: EdgeInsets.all(0),
              floatingLabelBehavior: FloatingLabelBehavior.never),
          helperText: title,
          hintText: hint,
          trailingIcon: Icon(Icons.arrow_drop_down_rounded),
          onSelected: (String? value) {
            // This is called when the user selects an item.
          },
          dropdownMenuEntries: items);
    });
  }
}
