import 'package:flutter/material.dart';

class CustomMenuButton extends StatelessWidget {
  final List<String> items;
  final String hint;
  final double width;

  const CustomMenuButton({
    super.key,
    required this.items,
    this.hint = 'Choose Event item',
    this.width = 350,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownMenu<String>(
      hintText: hint,
      width: width,
      textStyle: const TextStyle(
        color: Colors.black, // text always black
        fontSize: 14,
      ),
      menuStyle: const MenuStyle(
        backgroundColor:
        MaterialStatePropertyAll(Colors.white),
      ),
      dropdownMenuEntries: items
          .map((a) => DropdownMenuEntry(
        value: a,
        label: a,
      ))
          .toList(),
      trailingIcon: const Icon(
        Icons.arrow_drop_down,
        color: Colors.grey,
      ),
    );
  }
}




/*
Column(
children: [
DropdownMenu<String>(
hintText: hint,
width: width,
dropdownMenuEntries: items
    .map((a) => DropdownMenuEntry(value: a, label: a))
    .toList(),
trailingIcon: const Icon(
Icons.arrow_drop_down, // down arrow icon
color: Colors.grey,
),
),
],
);*/
