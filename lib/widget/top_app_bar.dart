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
      title: const Text("MS Eom Portfolio"),
      actions: [
        IconButton(
            onPressed: (){
              Scrollable.ensureVisible(
                  profileKey.currentContext!,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: 0
              );
            },
            icon: const Icon(Icons.person)
        ),
        IconButton(
            onPressed: (){
              Scrollable.ensureVisible(
                  androidKey.currentContext!,
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                  alignment: 0
              );
            },
            icon: const Icon(Icons.android),
        ),
        IconButton(
          onPressed: (){
            Scrollable.ensureVisible(
                flutterKey.currentContext!,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                alignment: 0
            );
          },
          icon: const Icon(Icons.flutter_dash),
        ),
        IconButton(
          onPressed: (){
            Scrollable.ensureVisible(
                webKey.currentContext!,
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeInOut,
                alignment: 0
            );
          },
          icon: const Icon(Icons.web),
        )
      ],
    );
  }
}
