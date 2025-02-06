import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yohire_clone/core/colors.dart';

import 'widgets/custom_heading.dart';
import 'widgets/custom_trend_tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SizedBox(
            width: 130, child: Image.asset("assets/icons/home_logo.png")),
        actions: [
          Container(
            height: MediaQuery.of(context).size.height * .057,
            width: MediaQuery.of(context).size.width * .12,
            decoration: BoxDecoration(
                border: Border.all(color: kGreyColor),
                borderRadius: BorderRadius.circular(14)),
            child: Center(
              child: SizedBox(
                  height: MediaQuery.of(context).size.height * .03,
                  child: Image.asset("assets/icons/ringing.png")),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * .04,
          )
        ],
      ),
      //---       app bar
      body: Column(
        children: [
          //trending title
          CustomHeading(heading: "On Trending",),
          Gap(10),
          SizedBox(
            height: MediaQuery.of(context).size.height * .26,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 14.0), 
                  child: CustomTrendingTiles(),
                );
              },
              itemCount: 10,
              separatorBuilder: (context, index) => Gap(10),
            ),
          ),
          CustomHeading(heading: "Recommendations"),
          Container(height: 100,width: 300,color: kGreyColor,)
        ],
      ),
    );
  }
}
