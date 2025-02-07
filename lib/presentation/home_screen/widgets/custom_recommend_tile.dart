
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/colors.dart';
import '../../other/green_contanier.dart';

class CustomRecommendTile extends StatelessWidget {
  const CustomRecommendTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        //height: 230,
      
         height: MediaQuery.of(context).size.height * .36,
       width: MediaQuery.of(context).size.width,
      
        decoration: BoxDecoration(
            border: Border.all(
              color: kGreyColor,
            ),
            borderRadius: BorderRadius.circular(11)),
        child: Padding(
          padding: const EdgeInsets.all(11.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      "Auto Electrican For Hcv Hundai & Tata Buses",
                      style: GoogleFonts.aBeeZee(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Saudi Arabia",
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300),
                  ),
                  Text(
                    "Salary Est : 3000 - 3500 SAR ",
                    style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w300),
                  ),
                  Gap(5),
                  greenContainer(
                      text: "8 hours duty / Weekly one day off",
                      height: 22,
                      width: 250),
                  Gap(4),
                  greenContainer(
                      text:
                          "\t Accommadation 25 % of BasicAccommodation 25 % of basic",
                      height: 46,
                      width: MediaQuery.of(context).size.width*.71),
                  Gap(5),
                  greenContainer(
                      text: "Transportation 300 SAR /2 Year Contract",
                      height: 22,
                      width: 250),
                  Gap(2),
                  Text(
                    'Posted 8 hours  ago',
                    style: GoogleFonts.aBeeZee(fontSize: 12),
                  )
                ],
              ),
              Column(
                children: [
                  Gap(5),
                  SizedBox(
                    // height: MediaQuery.of(context).size.height * .04,
                    height: 40,
                    width: MediaQuery.of(context).size.width * .06,
                    child: Image.asset("assets/icons/bookmark.png"),
                  ),
                  Gap(10),
                  Icon(Icons.file_upload)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
