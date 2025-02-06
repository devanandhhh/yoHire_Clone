import 'package:flutter/material.dart';
import 'package:yohire_clone/presentation/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yohire Clone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
