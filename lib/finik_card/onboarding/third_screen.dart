import 'package:finik/finik_card/constants/colors.dart';
import 'package:finik/finik_card/main_screen.dart';
import 'package:finik/finik_card/widgets/button_widgets/button_widget.dart';
import 'package:finik/finik_card/widgets/icon_widgets/icon_glass_widget.dart';
import 'package:finik/finik_card/onboarding/fourth_screen.dart';
import 'package:flutter/material.dart';
import 'package:finik/finik_card/widgets/onboarding_text_widget.dart';
import 'package:finik/finik_card/widgets/custom_screen_widget/custom_image_widget.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const CustomImageWidget(
            imagePath: 'assets/Ellipse3.png',
            fit: BoxFit.fill,
            top: -20,
            left: 0,
            right: 0,
          ),
          const CustomImageWidget(
            imagePath: 'assets/OrangeEllipse2.png',
            fit: BoxFit.cover,
            top: -20,
            left: 0,
            right: 0,
          ),
          const CustomImageWidget(
            imagePath: 'assets/MacBookPro16(1).png',
            fit: BoxFit.cover,
            top: 210,
            right: 0,
            left: 0,
          ),
          Positioned(
            top: 76,
            right: 16,
            child: IconGlassWidget(
              iconData: Icons.close,
              left: 0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MainScreen(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OnboardingTextWidget(
                    text: 'Везде.',
                    textColor: Colors.black38,
                  ),
                  const OnboardingTextWidget(
                    text: 'На всех платформах',
                    textColor: Colors.white,
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ButtonWidget(
                      buttonText: 'Далее',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const FourthScreen(),
                          ),
                        );
                      },
                      buttonColor: finikGreen2,
                      textColor: finikBlack,
                      textSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ButtonWidget(
                      buttonText: 'Пропустить',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MainScreen(),
                          ),
                        );
                      },
                      buttonColor: finikGrey,
                      textColor: Colors.white,
                      textSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
