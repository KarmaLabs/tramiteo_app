import 'package:flutter/material.dart';

import '../utils/html_helper.dart';

enum TypeInfo {
  info,
  success,
  warning,
  error,
}

class InfoBoxWidget extends StatelessWidget {
  final String text;
  final TypeInfo type;
  final IconData? customIcon;

  const InfoBoxWidget(
      {Key? key,
      required this.text,
      this.type = TypeInfo.info,
      this.customIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final color = type == TypeInfo.info
        ? Colors.blue
        : type == TypeInfo.success
            ? Colors.green
            : type == TypeInfo.warning
                ? Colors.orange
                : type == TypeInfo.error
                    ? Colors.red
                    : Colors.blue;

    final IconData icon;

    switch (type) {
      case TypeInfo.success:
        icon = Icons.chair;

        break;
      case TypeInfo.warning:
        icon = Icons.warning;

        break;
      case TypeInfo.error:
        icon = Icons.error;

        break;
      default:
        icon = Icons.info_outline;
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: color.shade50,
        border: Border.all(color: color.shade800),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            customIcon ?? icon,
            color: color.shade800,
            size: 40,
          ),
          // const SizedBox(
          //   width: 4,
          // ),
          Expanded(
            child: HtmlHelper.getHtml(
              text,
            ),
          ),
        ],
      ),
    );
  }
}
