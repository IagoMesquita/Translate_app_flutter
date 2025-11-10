import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      onSelected: (value) {},
      menuStyle: MenuStyle(alignment: Alignment.center),
      textAlign: TextAlign.center,
      initialSelection: "Language",
      trailingIcon: Icon(Icons.arrow_drop_down, color: Colors.white),
      selectedTrailingIcon: Icon(Icons.arrow_drop_up, color: Colors.white),
      dropdownMenuEntries: [],
    );
  }
}
