import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListViewHorizontalWidget extends StatelessWidget {
  final List<String> names;
  final Widget icon1;
  final IconData icon2;

  const ListViewHorizontalWidget({
    Key? key,
    required this.names,
    required this.icon1,
    required this.icon2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: names.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 120,
          height: 115,
          margin: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  names[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    icon1,
                    Expanded(child: Container()),
                    Icon(
                      icon2,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
