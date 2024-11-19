import 'package:flutter/material.dart';
import 'package:ms_portfolio/screen/flutter_portfolio.dart';
import 'package:ms_portfolio/screen/profile.dart';
import 'package:ms_portfolio/screen/web.dart';

import 'android_portfolio.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey profileKey;
  final GlobalKey androidKey;
  final GlobalKey flutterKey;
  final GlobalKey webKey;

  const HomeScreen(this.profileKey, this.androidKey, this.flutterKey, this.webKey, {super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: [
                    MyProfile(scrollKey: widget.profileKey),
                    MyAndroidProjects(scrollKey: widget.androidKey),
                    MyFlutterProjects(scrollKey: widget.flutterKey),
                    MyWebPortfolios(scrollKey: widget.webKey),
                  ],
                ),
              ),
            ),
          ),
        ]
    );
  }
}
