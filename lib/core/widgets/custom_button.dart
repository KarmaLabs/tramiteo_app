import 'package:auto_size_text/auto_size_text.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String? label;
  final VoidCallback? function;

  // ignore: use_key_in_widget_constructors
  const CustomButton({this.label, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: InkWell(
        onTap: function,
        child: Container(
          height: 55.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gradient: LinearGradient(
              colors: [Colors.green[800]!, Colors.green[300]!],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: Center(
            child: ListTile(
              title: AutoSizeText(
                label!,
                maxLines: 2,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.white,
                    fontFamily: "Sofia",
                    fontWeight: FontWeight.w700,
                    fontSize: 18.0,
                    letterSpacing: 1.1),
              ),
              trailing: const Icon(
                EvaIcons.arrowIosForwardOutline,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
