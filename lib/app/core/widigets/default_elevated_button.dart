// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_web_speedrun/app/core/ui/theme_extensions.dart';

class DefaultElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final double borderRadius;
  final Color? color;
  final Color? labelColor;
  final String label;
  final double labelSize;
  final double padding;
  final double widgt;
  final double height;

  const DefaultElevatedButton({
    super.key,
    required this.onPressed,
    this.borderRadius = 10,
    this.color,
    this.labelColor,
    required this.label,
    this.labelSize = 20,
    this.padding = 10,
    this.widgt = double.infinity,
    this.height = 66,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(padding),
      width: widgt,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius)),
          backgroundColor: color ?? context.primaryColor,
        ),
        child: Text(
          label,
          style: TextStyle(
            fontSize: labelSize,
            color: labelColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}
