import 'package:flutter/material.dart';
import 'package:ms_portfolio/widget/portfolio_card.dart';

import '../common/common_functions.dart';


class MobileAndroidPortfolioWidget extends StatelessWidget {
  const MobileAndroidPortfolioWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        PortfolioCard("assets/images/unipiece.png", "유니피스", "https://github.com/APP-Android2/FinalProject-ShoppingMallService-team6"),
        PortfolioCard("assets/images/modigm.png", "모우다임", "https://github.com/APP-Android2/FinalProject-modigm"),
        PortfolioCard("assets/images/moviefriends.png", "무비프렌즈", "https://github.com/ums1212/movie-friends"),
      ],
    );
  }
}
