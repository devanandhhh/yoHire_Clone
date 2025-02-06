import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';

class CustomTrendingTiles extends StatelessWidget {
  const CustomTrendingTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .26,
      width: MediaQuery.of(context).size.width * .610,
     
      decoration: BoxDecoration(
          border: Border.all(color: kGreyColor),
          borderRadius: BorderRadius.circular(11)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(11.0),
                child: CircleAvatar(backgroundColor: kGreyColor,  
                  radius: 25, child: Center(child: Image.asset("assets/icons/user.png",scale: 23,),),
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
                child: Text(
              "Senior Sales Relationship Manager",
              style: GoogleFonts.aBeeZee(
                  fontSize: 18, fontWeight: FontWeight.bold),
            )),
          ),
          Gap(20),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(),
                Container(
                  height: 40,
                  //height: MediaQuery.of(context).size.height * .04,
                  width: MediaQuery.of(context).size.width * .16,
                 decoration: BoxDecoration(color: kblueColor,borderRadius: BorderRadius.circular(8)),
                 child: Center(child: Text("Apply",style: GoogleFonts.roboto(color: kWhiteColor,fontWeight: FontWeight.bold),),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
