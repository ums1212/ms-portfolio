import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfScreen extends StatelessWidget {
  final String pdfLink;
  const PdfScreen(this.pdfLink, {super.key});

  @override
  Widget build(BuildContext context) {
    return SfPdfViewer.asset(pdfLink);
  }
}
