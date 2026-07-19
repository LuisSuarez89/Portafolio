import 'dart:html' as html;

const cvAssetPath = 'assets/files/cv_luis_suarez.pdf';
const cvDownloadName = 'CV_Luis_Suarez.pdf';

Future<void> downloadCv() async {
  html.AnchorElement(href: cvAssetPath)
    ..setAttribute('download', cvDownloadName)
    ..click();
}
