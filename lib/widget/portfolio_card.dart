import 'package:flutter/material.dart';
import 'package:ms_portfolio/style/text_style.dart';
import 'package:url_launcher/url_launcher_string.dart';

class PortfolioCard extends StatelessWidget {
  final String image;
  final String title;
  final String url;
  const PortfolioCard(this.image, this.title, this.url, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          launchUrlString(url);
        },
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(image, width: 300),
              Text(title, style: cardTitleTextStyle),
            ],
          ),
        ),
      ),
    );
  }
}
