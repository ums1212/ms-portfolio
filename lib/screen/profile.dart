import 'package:flutter/material.dart';
import 'package:ms_portfolio/widget/profile_widget.dart';

import '../style/text_style.dart';
import '../widget/stack_icon.dart';

class MyProfile extends StatelessWidget {
  final GlobalKey scrollKey;
  const MyProfile({super.key, required this.scrollKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: SizedBox(
          key: scrollKey,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("About Me", style: sectionTitleTextStyle),
                const Padding(padding: EdgeInsets.only(bottom: 48)),
                (MediaQuery.of(context).size.width > 900)
                  ? const PcProfileWidget()
                  : const MobileProfileWidget(),
                const Padding(padding: EdgeInsets.only(bottom: 48)),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StackIcon(imageAsset: "assets/images/android_icon.png"),
                    StackIcon(imageAsset: "assets/images/kotlin_icon.png"),
                    StackIcon(imageAsset: "assets/images/java_icon.png"),
                    StackIcon(imageAsset: "assets/images/javascript_icon.png"),
                    StackIcon(imageAsset: "assets/images/python_icon.png"),
                  ],
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StackIcon(imageAsset: "assets/images/mssql_icon.png"),
                    StackIcon(imageAsset: "assets/images/firebase_icon.png"),
                    StackIcon(imageAsset: "assets/images/mongodb_icon.png"),
                    StackIcon(imageAsset: "assets/images/flutter_icon.png"),
                    StackIcon(imageAsset: "assets/images/dart_icon.png"),
                  ],
                ),
                const Padding(padding: EdgeInsets.only(bottom: 24)),
              ],
            ),
          )
      ),
    );
  }
}
