import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:tramiteo/core/widgets/html/html_model.dart';

import '../../review/review_widget.dart';
import '../../utils/launch_url_helper.dart';

class HtmlScreen extends StatelessWidget {
  const HtmlScreen({Key? key, required this.htmlModel}) : super(key: key);
  final HtmlModel htmlModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(htmlModel.title),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text(
            //   faqCategory!,
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       fontSize: 12,
            //       color: Colors.cyan.shade900),
            // ),
            // SizedBox(
            //   height: 8,
            // ),
            Text(
              htmlModel.title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Html(
              data: htmlModel.content,
              shrinkWrap: false,
              style: {
                'a': Style(
                  fontFamily: 'Sofia',
                  color: Colors.cyan.shade600,
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
              onLinkTap: (String? url, _, __, ___) {
                LaunchUrlHelper.launchURL(url: url!);
              },
            ),
            const ReviewWidget()
          ],
        ),
      ),
    );
  }
}
