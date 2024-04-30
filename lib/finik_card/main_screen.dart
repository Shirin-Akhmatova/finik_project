import 'package:finik/finik_card/constants/colors.dart';
import 'package:finik/finik_card/logIn/login_screen.dart';
import 'package:finik/finik_card/signUp/signUp_screen.dart';
import 'package:finik/finik_card/widgets/button_widgets/button_widget.dart';
import 'package:finik/finik_card/widgets/positioned_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const PositionedWidget(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset( // тут был SvgPicture.asset
                    'assets/Vector.png',
                    width: 46,
                    height: 46,
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Финик Карта',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Neue Machina',
                      fontSize: 40,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Отмечай места на карте где нет нашего терминала, мы поставим его, а тебе пришлем бонусы которые ты сможешь обменять на реальные призы',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ButtonWidget(
                      buttonText: 'Войти в аккаунт',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LogInScreen(),
                          ),
                        );
                      },
                      buttonColor: finikGreen,
                      textColor: finikBlack,
                      textSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    height: 52,
                    width: double.infinity,
                    child: ButtonWidget(
                      buttonText: 'Регистрация',
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      buttonColor: finikGrey,
                      textColor: finikGreen,
                      textSize: 16,
                      fontWeight: FontWeight.bold,
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
