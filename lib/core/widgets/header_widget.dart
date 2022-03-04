import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String title;
  const HeaderWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 30,
        ),
        child: AutoSizeText(
          title,
          maxLines: 2,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 23,
            color: Theme.of(context).colorScheme.primary,
            // color: AppTheme.of(context)
            //     .secondary, //Theme.of(context).primaryColor, //Colors.cyan[800],
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
