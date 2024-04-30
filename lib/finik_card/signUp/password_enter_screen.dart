import 'package:finik/finik_card/constants/colors.dart';
import 'package:finik/finik_card/main_screen.dart';
import 'package:finik/finik_card/signUp/code_screen.dart';
import 'package:finik/finik_card/widgets/button_widgets/button_widget.dart';
import 'package:finik/finik_card/widgets/header_widgets/header_widget.dart';
import 'package:finik/finik_card/widgets/field_widgets/password_field_widget.dart';
import 'package:finik/finik_card/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class PasswordEnterScreen extends StatelessWidget {
  const PasswordEnterScreen({super.key});

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
                  HeaderWidget(
                    title: 'Регистрация',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainScreen(),
                        ),
                      );
                    },
                  ),
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: TextWidget(text: 'Введите пароль'),
                  ),
                  const PasswordFieldWidget(
                    hintText: 'Введите пароль',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: TextWidget(text: 'Повторите пароль'),
                  ),
                  const PasswordFieldWidget(
                    hintText: 'Повторите пароль',
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
                      buttonText: 'Получить код через СМС',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CodeScreen(),
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
