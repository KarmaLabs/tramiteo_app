import 'package:intl/intl.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class Parser {
  static DateTime formatPubDateRss(String date) {
    return DateFormat("E, d LLL y hh:mm:ss").parse(date);
  }

  static DateTime formatPublishedYT(String date) {
    return DateFormat("y-M-dThh:mm:ss").parse(date);
  }

  static formatDateString(String date) {
    DateTime timeFormat = DateTime.parse(date);
    final timeDif = DateTime.now().difference(timeFormat);
    return timeago.format(DateTime.now().subtract(timeDif), locale: 'es');
  }

  static AutoSizeText autoSizeText({String? text, TextStyle? style}) {
    return AutoSizeText(
      text!,
      style: style,
      maxLines: 1,
    );
  }

  static String getDomain(String url) {
    String temp =
        url.replaceAll(url.contains('www.') ? 'https://www.' : 'https://', '');
    String domain = temp.substring(0, temp.indexOf('/'));

    return domain;
  }
}
