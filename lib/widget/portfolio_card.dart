import 'package:flutter/material.dart';
import 'package:ms_portfolio/model/portfolio.dart';
import 'package:ms_portfolio/style/text_style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PortfolioCard extends StatelessWidget {
  final Portfolio portfolio;
  const PortfolioCard(this.portfolio, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          launchUrlString(portfolio.link);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(portfolio.imagePath, width: 300),
              Text(portfolio.title, style: cardTitleTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
