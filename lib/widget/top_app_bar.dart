import 'package:flutter/material.dart';

class TopAppBar extends StatelessWidget {
  final GlobalKey profileKey;
  final GlobalKey androidKey;
  final GlobalKey flutterKey;
  final GlobalKey webKey;

  const TopAppBar(this.profileKey, this.androidKey, this.flutterKey, this.webKey, {super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("MS Eom"),
      actions: [
        IconButton(
            onPressed: () => scrollToPortfolio(profileKey),
            icon: const Icon(Icons.person)
        ),
        IconButton(
            onPressed: () => scrollToPortfolio(androidKey),
            icon: const Icon(Icons.android),
        ),
        IconButton(
          onPressed: () => scrollToPortfolio(flutterKey),
          icon: const Icon(Icons.flutter_dash),
        ),
        IconButton(
          onPressed: () => scrollToPortfolio(webKey),
          icon: const Icon(Icons.web),
        )
      ],
    );
  }
}


void scrollToPortfolio(GlobalKey key){
  Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      alignment: 0
  );
}