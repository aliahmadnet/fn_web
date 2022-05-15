import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle normalMenu = GoogleFonts.poppins(
  fontSize: 18,
);

TextStyle activeMenu = GoogleFonts.poppins(
  fontSize: 18,
  fontWeight: FontWeight.w500,
  color: Color(0xff1D1E3C),
);

TextStyle content20 = GoogleFonts.poppins(
  fontSize: 20,
  color: Colors.black,
);

BoxDecoration activeBoxLink = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Color(0xffFE998D),
);

BoxDecoration normalBoxLink = BoxDecoration(
  borderRadius: BorderRadius.circular(20),
  color: Colors.transparent,
);
