 import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

AppBar customAppbar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_circle_left_rounded),
        onPressed: () => Navigator.pop(context),
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 12.0, bottom: 12),
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.close),
            border: OutlineInputBorder(),
            label: Row(
              children: [
                Icon(
                  Icons.search,
                ),
                Gap(5),
                Text("Search jobs")
              ],
            ),
          ),
        ),
      ),
    );
  }