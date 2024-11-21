import 'package:flutter/material.dart';
import 'package:ms_portfolio/widget/portfolio_card.dart';

import '../model/portfolio.dart';

class PortfolioCardList extends StatelessWidget {
  final List<Portfolio> portfolioList;
  const PortfolioCardList(this.portfolioList, {super.key});

  @override
  Widget build(BuildContext context) {

    List<PortfolioCard> list = [];

    for(var item in portfolioList){
      list.add(PortfolioCard(item));
    }

    return (MediaQuery.of(context).size.width > 1250)
        ? Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: list)
        : Column(children: list);
  }
}
