import 'package:flutter/material.dart';

import '../common/common_functions.dart';
import '../style/text_style.dart';
import '../widget/portfolio_card.dart';

class MyFlutterProjects extends StatelessWidget {
  final GlobalKey scrollKey;
  const MyFlutterProjects({super.key, required this.scrollKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: SizedBox(
          key: scrollKey,
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Column(
            children: [
              Text("Flutter Projects", style: sectionTitleTextStyle),
              Padding(padding: EdgeInsets.symmetric(vertical: 24)),
              PortfolioCard("assets/images/myworldcup.png", "내가 만든 월드컵", "https://github.com/valborgs/my-worldcup-local"),
            ],
          )
      ),
    );
  }
}
