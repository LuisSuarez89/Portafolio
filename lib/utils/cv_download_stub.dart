import 'package:url_launcher/url_launcher.dart';

const cvAssetPath = 'assets/files/cv_luis_suarez.pdf';
const cvDownloadName = 'CV_Luis_Suarez.pdf';

Future<void> downloadCv() => launchUrl(
      Uri.parse(cvAssetPath),
      mode: LaunchMode.externalApplication,
    );
