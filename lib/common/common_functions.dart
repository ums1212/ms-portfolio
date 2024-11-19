
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchPortfolioUrl(String url, BuildContext context) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else {
    if(context.mounted){
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}

const snackBar = SnackBar(
  content: Text("연결 실패, 잠시 후 다시 시도해주세요."),
);