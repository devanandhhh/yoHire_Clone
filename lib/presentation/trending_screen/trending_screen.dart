import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../other/custom_appbar.dart';
import 'widgets/trending_custom_tiles.dart';

class TrendingScreen extends StatelessWidget {
  const TrendingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TrendingCustomTiles(
                jobTitle: "Senior Sales Relationship Manager",
              ),
              Gap(10),
              TrendingCustomTiles(jobTitle: "Sales person"),
              Gap(10),
              TrendingCustomTiles(jobTitle: "Sales person"),
              Gap(10),
              TrendingCustomTiles(jobTitle: "Sales person"),
              Gap(10),
              TrendingCustomTiles(jobTitle: "Sales person")
            ],
          ),
        ),
      ),
    );
  }
}
