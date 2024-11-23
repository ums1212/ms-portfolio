import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import '../style/text_style.dart';
import '../common/portfolio_list.dart';
import '../widget/portfolio_card_list.dart';

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
          child: Column(
              children: [
                const Text("Git Repository / Blog", style: sectionTitleTextStyle),
                const Padding(padding: EdgeInsets.symmetric(vertical: 24)),
                PortfolioCardList(webList),
                const Padding(padding: EdgeInsets.symmetric(vertical: 24)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 700,
                      height: 100,
                      alignment: Alignment.center,
                      child: InAppWebView(
                          initialUrlRequest: URLRequest(
                              url: WebUri("https://ghchart.rshah.org/219138/ums1212")
                          )
                      ),
                    )
                  ],
                ),
              ]
          )
      ),
    );
  }
}
