import 'package:flutter/material.dart';

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({
    super.key,
    this.onSelected,
    required this.languages,
    this.initialSelection,
  });

  final void Function(String?)? onSelected;
  final List<String> languages;
  final String? initialSelection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownMenu(
        onSelected: onSelected,
        menuStyle: MenuStyle(alignment: Alignment.center),
        textAlign: TextAlign.center,
        textStyle: TextStyle(color: Colors.white),
        initialSelection: initialSelection,
        trailingIcon: Icon(Icons.arrow_drop_down, color: Colors.white),
        selectedTrailingIcon: Icon(Icons.arrow_drop_up, color: Colors.white),
        dropdownMenuEntries: languages
            .map(
              (language) => DropdownMenuEntry(value: language, label: language),
            )
            .toList(),
      ),
    );
  }
}
