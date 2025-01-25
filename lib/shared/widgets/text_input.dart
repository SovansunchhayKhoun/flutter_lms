import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({
    super.key,
    required this.labelText,
    required this.hintText,
    this.leadingLabel,
  });

  final String labelText;
  final String hintText;
  final Widget? leadingLabel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              labelText,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            if (leadingLabel != null) leadingLabel!,
          ],
        ),
        TextField(
          decoration: InputDecoration(
            labelText: hintText,
            border: const OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
