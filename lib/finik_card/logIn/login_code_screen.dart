import 'package:finik/finik_card/widgets/timer_widget.dart';
import 'package:timer_builder/timer_builder.dart';
import 'package:finik/finik_card/constants/colors.dart';
import 'package:finik/finik_card/logIn/new_passord_screen.dart';
import 'package:finik/finik_card/logIn/new_password_validation.dart';
import 'package:finik/finik_card/widgets/button_widgets/button_widget.dart';
import 'package:finik/finik_card/widgets/button_widgets/text_button_widget.dart';
import 'package:finik/finik_card/widgets/field_widgets/new_OTP_field_widget.dart';
import 'package:finik/finik_card/widgets/header_widgets/header_widget2.dart';
import 'package:finik/finik_card/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LogInCodeScreen extends StatefulWidget {
  const LogInCodeScreen({super.key});

  @override
  State<LogInCodeScreen> createState() => _LogInCodeScreenState();
}

class _LogInCodeScreenState extends State<LogInCodeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const HeaderWidget2(
                    title: 'Новый пароль',
                  ),
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: TextWidget(text: 'Мы отправили тебе код на Email'),
                  ),
                  const NewOTPFieldWidget(),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10, top: 16),
                    child: TextWidget(
                      text:
                          'Введи полученный код, чтобы подтвердить свою почту',
                    ),
                  ),
                  Row(
                    children: [
                      TextButtonWidget(
                        buttonText: 'Отправить код заново',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const NewPasswordScreen(),
                            ),
                          );
                        },
                        textColor: finikGreen,
                        textSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      const SizedBox(width: 8),
                      const TimerWidget(),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 16,
              child: Center(
                child: SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    child: ButtonWidget(
                      buttonText: 'Далее',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewPasswordValid(),
                          ),
                        );
                      },
                      buttonColor: finikGreen,
                      textColor: finikBlack,
                      textSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
