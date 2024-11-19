import 'package:flutter/material.dart';

class MobileProfileWidget extends StatelessWidget {
  const MobileProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 128,
          backgroundImage: Image.asset("assets/images/profile.jpg").image,
        ),
        const Padding(padding: EdgeInsets.only(right: 48)),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("엄민식", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
            Text("1993. 12. 12"),
            Divider(),
            Text("안드로이드 앱 개발자이고 서울시 금천구에 살고 있습니다. \n그런데 이 포트폴리오는 플러터로 만들었습니다. \n재밌어 보이는 걸 시도하는 것을 좋아합니다. \n산책하면서 아이디어 짜는 것을 좋아합니다. \n최근에 정보처리기사와 운전면허를 땄습니다."),
            Divider(),
            Text("아주대학교 영어영문학과 (2012.03 ~ 2019.08)"),
            Text("서베이피플 대리 (2020.01 ~ 2023.11)"),
            Text("멋쟁이사자처럼 TECHIT 앱 스쿨 2기 (2023.12 ~ 2024.06)"),
            Text("SeSAC 금천 안드로이드 4기 (2024.08 ~ 2024.11)"),
          ],
        )
      ],
    );
  }
}
