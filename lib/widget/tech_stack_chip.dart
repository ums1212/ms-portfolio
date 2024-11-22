import 'package:flutter/material.dart';

class TechStackChip extends StatelessWidget {
  final String text;
  const TechStackChip(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      labelPadding: const EdgeInsets.all(2.0),
      label: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
      side: BorderSide.none,
      backgroundColor: Colors.green,
      elevation: 6.0,
      shadowColor: Colors.grey[60],
      padding: const EdgeInsets.all(8.0),
    );
    ;
  }
}
