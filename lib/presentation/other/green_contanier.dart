
  import 'package:flutter/material.dart';

Container greenContainer(
      {required String text, required double height, required double width}) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: Colors.green[200], borderRadius: BorderRadius.circular(5)),
      child: Center(child: Text(text)),
    );
  }