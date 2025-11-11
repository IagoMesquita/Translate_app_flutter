import 'package:flutter/material.dart';

class TranslateBox extends StatelessWidget {
  const TranslateBox({
    super.key,
    required this.icons,
    this.onChanged,
    this.onSubmitted,
    required this.labelText,
    this.translatedText,
    this.isTextFild = true,
  });

  final List<Icon> icons;
  final String labelText;
  final String? translatedText;
  final bool isTextFild;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 15),
          isTextFild
              ? TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    labelText: labelText,
                    alignLabelWithHint: true,
                    floatingLabelAlignment: FloatingLabelAlignment.start,
                    border: OutlineInputBorder(borderSide: BorderSide.none),
                    contentPadding: EdgeInsets.fromLTRB(8, 15, 15, 0),
                  ),
                  textInputAction: TextInputAction.done,
                  onChanged: onChanged,
                  controller: TextEditingController(),
                  onSubmitted: onSubmitted,
                )
              : Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(translatedText ?? 'Tradução'),
              ),
          Spacer(),
          Divider(indent: 10, endIndent: 10),
          Row(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.end,
            children: icons,
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
