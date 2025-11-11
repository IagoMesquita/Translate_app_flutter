import 'package:flutter/material.dart';
import 'package:translate/domain/helpers/languages.dart';

class CustomDropdownMenu extends StatelessWidget {
  const CustomDropdownMenu({
    super.key,
    this.onSelected,
    required this.languages,
    this.initialSelection,
  });

  final void Function(Languages?)? onSelected;
  final List<Languages> languages;
  final Languages? initialSelection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownMenu(
        onSelected: onSelected,
        initialSelection: initialSelection,
        menuStyle: MenuStyle(alignment: Alignment.center),
        textAlign: TextAlign.center,
        textStyle: TextStyle(color: Colors.white),
        trailingIcon: Icon(Icons.arrow_drop_down, color: Colors.white),
        selectedTrailingIcon: Icon(Icons.arrow_drop_up, color: Colors.white),
        dropdownMenuEntries: languages
            .map(
              (language) => DropdownMenuEntry(value: language, label: language.name),
            )
            .toList(),
      ),
    );
  }
}
