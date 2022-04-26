import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GradientButton extends StatelessWidget {
  const GradientButton(
      {required this.text,
      required this.gradient,
      required this.onPressed,
      this.borderRadius,
      Key? key})
      : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final BorderRadius? borderRadius;
  final Gradient gradient;

  static final defaultBorderRadius = BorderRadius.circular(36);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      width: double.maxFinite,
      margin: const EdgeInsets.symmetric(horizontal: 52),
      decoration: BoxDecoration(
        gradient: gradient,
        borderRadius: borderRadius ?? defaultBorderRadius,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? defaultBorderRadius,
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 22),
        ),
      ),
    );
  }
}
