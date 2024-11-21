import 'package:flutter/material.dart';

import '../style/text_style.dart';
import '../common/portfolio_list.dart';
import '../widget/portfolio_card_list.dart';

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
          child: Column(
            children: [
              const Text("Flutter Projects", style: sectionTitleTextStyle),
              const Padding(padding: EdgeInsets.symmetric(vertical: 24)),
              PortfolioCardList(flutterList),
            ],
          )
      ),
    );
  }
}
