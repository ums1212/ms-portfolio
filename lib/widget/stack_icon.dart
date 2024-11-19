import 'package:flutter/material.dart';

class StackIcon extends StatelessWidget {

  final String imageAsset;

  const StackIcon({super.key, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 5,
      fit: FlexFit.loose,
      child: Image.asset(
        imageAsset,
        width: 96, height: 96,
      ),
    );
  }
}
