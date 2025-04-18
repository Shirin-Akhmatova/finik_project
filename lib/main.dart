import 'package:finik/finik_card/main_screen.dart';
import 'package:finik/finik_card/onboarding/first_screen.dart';
import 'package:finik/finik_card/widgets/opacity_animation/animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AnimationLogo(),
    );
  }
}
