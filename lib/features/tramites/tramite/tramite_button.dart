import 'package:flutter/material.dart';

class TramiteButton extends StatelessWidget {
  final String label;
  final VoidCallback function;
  final Color color;

  // ignore: use_key_in_widget_constructors
  const TramiteButton(
      {required this.label, required this.function, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
      child: InkWell(
        onTap: function,
        child: Container(
          height: 55.0,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            gradient: LinearGradient(
              colors: [color, color.withOpacity(0.5)],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: ListTile(
            title: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "Sofia",
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0,
                  letterSpacing: 1.1),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 24,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
