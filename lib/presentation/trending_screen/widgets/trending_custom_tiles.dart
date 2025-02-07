import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../other/green_contanier.dart';

class TrendingCustomTiles extends StatelessWidget {
  const TrendingCustomTiles({
    required this.jobTitle,
    super.key,
  });
  final String jobTitle;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: kGreyColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: CircleAvatar(
                  backgroundColor: kGreyColor,
                  radius: 25,
                  child: Center(
                    child: Image.asset(
                      "assets/icons/user.png",
                      scale: 23,
                    ),
                  ),
                ),
              ),

              //
              Flexible(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Intellectual Capital Hr Consulting Pvt ltd",
                    style: GoogleFonts.roboto(
                        fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text("Mumbai, Maharastra")
                ],
              )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 9, right: 9.0),
            child: Row(
              children: [
                SizedBox(
                    height: 15,
                    width: 15,
                    child: Image.asset(
                      "assets/icons/history.png",
                      fit: BoxFit.cover,
                    )),
                Gap(4),
                Flexible(
                    child: Text(
                  "Posted 13 hours ago",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 12,
                  ),
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flexible(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  jobTitle,
                  style: GoogleFonts.aBeeZee(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text("Mumbai, Maharastra"),
                Gap(5),
                Row(
                  children: [
                    greenContainer(text: "Full-time", height: 25, width: 100),
                    Gap(10),
                    greenContainer(
                        text: "No Degree Mentioned", height: 25, width: 150)
                  ],
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}
