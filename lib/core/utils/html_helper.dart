import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

import 'launch_url_helper.dart';

class HtmlHelper {
  static Html getHtml(String data) {
    return Html(
      data: data,
      shrinkWrap: false,
      style: {
        'a': Style(
          fontFamily: 'Sofia',
          color: Colors.green.shade600,
        ),
        'body': Style(
          fontFamily: 'Sofia',
          color: Colors.black54,
        ),

        // 'li': Style(
        //   fontFamily: 'Sofia',
        //   color: Colors.black38,
        // ),
      },
      onImageTap: (String? url, RenderContext context,
          Map<String, String> attributes, _) {
        LaunchUrlHelper.launchURL(url: url!);
      },
      onLinkTap: (String? url, _, __, ___) {
        LaunchUrlHelper.launchURL(url: url!);
      },
    );
  }
}
