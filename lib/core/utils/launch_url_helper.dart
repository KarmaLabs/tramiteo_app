import 'package:url_launcher/url_launcher.dart';

class LaunchUrlHelper {
  static launchURL({String url = '', bool tel = false}) async {
    if (tel) {
      final Uri _emailLaunchUri = Uri(
        scheme: 'tel',
        path: 'url',
      );

      launch(_emailLaunchUri.toString());
    } else {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
  }
}
