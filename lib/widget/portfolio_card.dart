import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ms_portfolio/model/portfolio.dart';
import 'package:ms_portfolio/style/text_style.dart';
import 'package:ms_portfolio/widget/tech_stack_chip.dart';
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
        child: SizedBox(
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(portfolio.imagePath, width: 300),
                Text(portfolio.title, style: cardTitleTextStyle),
                Text(portfolio.describe, style: cardDescribeTextStyle),
                const Padding(padding: EdgeInsetsDirectional.only(bottom: 16)),
                Wrap(
                  spacing: 6.0,
                  runSpacing: 4.0,
                  children: [for(var tech in portfolio.techStack) TechStackChip(tech)],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
