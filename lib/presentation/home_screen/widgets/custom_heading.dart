import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yohire_clone/presentation/recommendation_screen/recommendation_screen.dart';
import 'package:yohire_clone/presentation/trending_screen/trending_screen.dart';

import '../../../core/colors.dart';

class CustomHeading extends StatelessWidget {
  const CustomHeading(
      {super.key, required this.heading, required this.isTrending});

  final String heading;
  final bool isTrending;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18, right: 18, top: 12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style:
                GoogleFonts.aBeeZee(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          InkWell(
            onTap: () {
              isTrending
                  ? Navigator.push(context,
                      MaterialPageRoute(builder: (ctx) => TrendingScreen()))
                  : Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (ctx) => RecommendationScreen()));
            },
            child: Text(
              "Show All",
              style: GoogleFonts.roboto(
                  fontSize: 14, fontWeight: FontWeight.bold, color: kblueColor),
            ),
          )
        ],
      ),
    );
  }
}
