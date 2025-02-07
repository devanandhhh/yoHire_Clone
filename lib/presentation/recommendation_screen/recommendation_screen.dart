import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:yohire_clone/presentation/home_screen/widgets/custom_recommend_tile.dart';
import 'package:yohire_clone/presentation/other/custom_appbar.dart';

class RecommendationScreen extends StatelessWidget {
  const RecommendationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(context),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomRecommendTile(),
              Gap(10),
              CustomRecommendTile(),
              Gap(10),
              CustomRecommendTile(),
              Gap(10),
              CustomRecommendTile(),
              Gap(10),
              CustomRecommendTile(),
              Gap(10),
              CustomRecommendTile(),
              Gap(10),
              CustomRecommendTile(),
              Gap(10),
            ],
          ),
        ),
      ),
    );
  }
}
