
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading({
    super.key,required this.heading
  });

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: GoogleFonts.aBeeZee(
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "Show All",
            style: GoogleFonts.roboto(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: kblueColor),
          )
        ],
      ),
    );
  }
}
