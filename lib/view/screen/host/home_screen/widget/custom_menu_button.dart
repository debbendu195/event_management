import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  final List<String> items;
  final String hint;
  final double width;

  const CustomMenuButton({
    super.key,
    required this.items,
    this.hint = 'Choose Event item',
    this.width = 380,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DropdownMenu<String>(
          hintText: hint,
          width: width,
          dropdownMenuEntries: items
              .map((e) => DropdownMenuEntry(value: e, label: e))
              .toList(),
          trailingIcon: const Icon(
            Icons.arrow_drop_down, // down arrow icon
            color: Colors.green,
          ),
        ),
      ],
    );
  }
}
