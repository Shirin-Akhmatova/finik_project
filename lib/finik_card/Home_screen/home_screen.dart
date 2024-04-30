import 'package:finik/finik_card/constants/colors.dart';
import 'package:finik/finik_card/logIn/login_screen.dart';
import 'package:finik/finik_card/widgets/button_widgets/button_widget.dart';
import 'package:finik/finik_card/widgets/duck_widget/duck_widget.dart';
import 'package:finik/finik_card/widgets/duck_widget/open_line_widget.dart';
import 'package:finik/finik_card/widgets/header_widgets/menu_header.dart';
import 'package:finik/finik_card/widgets/list_view_widgets/list_view_horizontal_widget.dart';
import 'package:finik/finik_card/widgets/search_widget/search_bar_widget.dart';
import 'package:finik/finik_card/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    // final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      body: Stack(
        children: [
          FlutterMap(
            options: const MapOptions(
              initialCenter: LatLng(42.857224, 74.6051859),
              initialZoom: 16.0,
              backgroundColor: Colors.black45,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                subdomains: const ['a', 'b', 'c'],
                tileBuilder: darkModeTileBuilder,
              ),
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.menu),
                  color: Colors.white,
                  iconSize: 32,
                  onPressed: () {
                    _scaffoldKey.currentState!.openDrawer();
                  },
                ),
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.55,
            minChildSize: 0.02,
            maxChildSize: 1.0,
            builder: (BuildContext context, ScrollController scrollController) {
              return Container(
                decoration: const BoxDecoration(
                  color: finikDarkGrey,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 9,
                    ),
                    child: Column(
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(bottom: 11),
                          child: OpenLineWidget(),
                        ),
                        SizedBox(
                          height: 46,
                          child: SearchBarWidget(
                            firstIcon: Image.asset(
                              'assets/terminal_icon.png',
                              alignment: Alignment.bottomLeft,
                            ),
                            secondIcon: Icons.arrow_forward,
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 6),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: TextWidget(text: 'Услуги'),
                          ),
                        ),
                        SizedBox(
                          height: 126,
                          child: ListViewHorizontalWidget(
                            names: const [
                              'Мобильная связь',
                              'Интернет и хостинг',
                              'Оплата ЖКХ',
                              'Мобильная связь',
                            ],
                            icon1: Image.asset('assets/phone_icon.png'),
                            icon2: Icons.assistant_navigation,
                          ),
                        ),
                        const Align(
                          alignment: Alignment.centerLeft,
                          child: TextWidget(text: 'Места'),
                        ),
                        SizedBox(
                          height: 126,
                          child: ListViewHorizontalWidget(
                            names: const [
                              'Калыка Акиева, 24',
                              'Сыдыкова 179',
                              'Токтогула 5A',
                              'Калыка Акиева, 24',
                            ],
                            icon1: Image.asset('assets/house_icon.png'),
                            icon2: Icons.assistant_navigation,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const DuckWidget(
                          containerColor: finikGrey,
                          title: 'Войдите',
                          subtitle: 'Чтобы получать баллы',
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        width: 370,
        child: Padding(
          padding: const EdgeInsets.only(top: 55),
          child: Column(
            children: [
              const MenuHeader(),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Финик\nКарта',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Neue Machina',
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Text(
                        'Отмечай места на карте где нет нашего терминала, мы поставим его, а тебе пришлем бонусы которые ты сможешь обменять на реальные призы',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: ButtonWidget(
                          buttonText: 'Войти',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LogInScreen(),
                              ),
                            );
                          },
                          buttonColor: finikGreen,
                          textColor: Colors.black,
                          textSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Image.asset(
                'assets/Group9314.png',
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
