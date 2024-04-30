import 'package:finik/finik_card/widgets/header_widgets/header_widget2.dart';
import 'package:finik/finik_card/widgets/loading_indicator_widget.dart';
import 'package:flutter/material.dart';

class LogInLoadingScreen extends StatelessWidget {
  const LogInLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Column(
                children: [
                  HeaderWidget2(
                    title: 'Вход',
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 250),
                    child: LoadingIndicatorWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
