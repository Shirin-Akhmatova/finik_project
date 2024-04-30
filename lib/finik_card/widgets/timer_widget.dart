import 'package:flutter/material.dart';
import 'package:timer_builder/timer_builder.dart';

class TimerWidget extends StatefulWidget {
  const TimerWidget({Key? key}) : super(key: key);

  @override
  State<TimerWidget> createState() => _TimerWidgetState();
}

class _TimerWidgetState extends State<TimerWidget> {
  late DateTime expirationTime;

  @override
  void initState() {
    super.initState();
    expirationTime = DateTime.now().add(const Duration(seconds: 60));
  }

  String calculateRemainingTime(DateTime currentTime, DateTime expirationTime) {
    Duration difference = expirationTime.difference(currentTime);
    if (difference.isNegative) {
      return 'Время истекло';
    }
    String seconds = '${difference.inSeconds % 60}'.padLeft(2, '0');
    return '$seconds';
  }

  @override
  Widget build(BuildContext context) {
    return TimerBuilder.periodic(
      const Duration(seconds: 1),
      builder: (context) {
        DateTime currentTime = DateTime.now();
        String remainingTime =
            calculateRemainingTime(currentTime, expirationTime);
        return Text(
          '$remainingTime сек',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        );
      },
    );
  }
}
