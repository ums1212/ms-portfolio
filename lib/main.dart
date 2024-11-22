import 'package:flutter/material.dart';
import 'package:ms_portfolio/screen/home_screen.dart';
import 'package:ms_portfolio/widget/top_app_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GlobalKey _profileKey = GlobalKey();
  final GlobalKey _androidKey = GlobalKey();
  final GlobalKey _flutterKey = GlobalKey();
  final GlobalKey _webKey = GlobalKey();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Minsik's Development Portfolio",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(62),
            child: TopAppBar(_profileKey, _androidKey, _flutterKey, _webKey)
        ),
        body: HomeScreen(_profileKey, _androidKey, _flutterKey, _webKey),
      ),
    );
  }
}