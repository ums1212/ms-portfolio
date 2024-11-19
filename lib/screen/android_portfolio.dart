import 'package:flutter/material.dart';

import '../style/text_style.dart';
import '../widget/mobile_android_portfolio_widget.dart';
import '../widget/pc_android_portfolio_widget.dart';

class MyAndroidProjects extends StatelessWidget {
  final GlobalKey scrollKey;
  const MyAndroidProjects({super.key, required this.scrollKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: SizedBox(
          key: scrollKey,
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            children: [
              const Text("Android Projects", style: sectionTitleTextStyle),
              const Padding(padding: EdgeInsets.symmetric(vertical: 24)),
              (MediaQuery.of(context).size.width > 1250)
                  ? const PcAndroidPortfolioWidget()
                  : const MobileAndroidPortfolioWidget(),
            ],
          )
      ),
    );
  }
}
