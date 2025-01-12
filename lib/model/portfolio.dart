class Portfolio {
  final String imagePath;
  final String title;
  final String link;
  final String describe;
  final List<String> techStack;
  final String? pdfLink;
  final String? webLink;

  Portfolio(
      this.imagePath,
      this.title,
      this.link,
      this.describe,
      this.techStack,
      this.pdfLink,
      this.webLink);
}