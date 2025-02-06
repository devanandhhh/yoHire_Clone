import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yohire_clone/core/colors.dart';

import 'widgets/custom_heading.dart';
import 'widgets/custom_recommend_tile.dart';
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
            height: 40,
            // height: MediaQuery.of(context).size.height * .057,
            width: 40,
            //width: MediaQuery.of(context).size.width * .12,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //trending title
            CustomHeading(
              heading: "On Trending",
            ),
            Gap(10),
            SizedBox(
              height: 220,
              // height: MediaQuery.of(context).size.height * .29 ,
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
            CustomHeading(heading: "Recommendations"), Gap(10),
            CustomRecommendTile(),
            Gap(10),
            CustomRecommendTile(),
            Gap(10),
            CustomRecommendTile()
            // SizedBox(height: 500,
            //   child: ListView.separated(itemBuilder: (context, index) {
            //     return CustomRecommendTile();
            //   }, separatorBuilder: (context, index) => Gap(10), itemCount: 5),
            // )
          ],
        ),
      ),
    );
  }
}
