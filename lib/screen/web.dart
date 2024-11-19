import 'package:flutter/material.dart';
import 'package:ms_portfolio/widget/portfolio_card.dart';

import '../style/text_style.dart';

class MyWebPortfolios extends StatelessWidget {
  final GlobalKey scrollKey;
  const MyWebPortfolios({super.key, required this.scrollKey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: SizedBox(
          key: scrollKey,
          width: MediaQuery.of(context).size.width * 0.8,
          child: const Column(
            children: [
              Text("Git Repository / Blog", style: sectionTitleTextStyle),
              Padding(padding: EdgeInsets.symmetric(vertical: 24)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  PortfolioCard("assets/images/github_icon.png", "깃허브 1", "https://github.com/ums1212"),
                  PortfolioCard("assets/images/github_icon.png", "깃허브 2", "https://github.com/valborgs"),
                  PortfolioCard("assets/images/velog_icon.png", "개발 블로그", "https://velog.io/@valborgs"),
                ],
              ),
            ]
          )
      ),
    );
  }
}
