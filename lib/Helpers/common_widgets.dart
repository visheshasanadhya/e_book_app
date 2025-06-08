import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommonWidgets {
  Widget textWidget({
    required String text,
    TextAlign? align,
    double size = 14,
    Color color = Colors.black,
    FontWeight weight = FontWeight.normal,
    double? letterspace,
    double? wordheight,
    int? maxline,
  }) {
    return Text(
      text,
      maxLines: maxline,
      textAlign: align,
      style: GoogleFonts.poppins(
        fontSize: size,
        color: color,
        fontWeight: weight,
        letterSpacing: letterspace,
        height: wordheight,
      ),
    );
  }
}
