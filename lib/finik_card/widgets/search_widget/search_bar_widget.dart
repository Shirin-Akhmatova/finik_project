import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchBarWidget extends StatefulWidget {
  final Widget? firstIcon;
  final IconData secondIcon;

  const SearchBarWidget({
    super.key,
    this.firstIcon,
    required this.secondIcon,
  });

  @override
  _SearchBarWidgetState createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {},
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        fillColor: Colors.black,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: widget.firstIcon != null
            ? Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: widget.firstIcon,
              )
            : null,
        hintText: 'Что ищем?',
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.normal,
        ),
        suffixIcon: Icon(
          widget.secondIcon,
          size: 20,
          color: Colors.grey,
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
        ),
      ),
    );
  }
}
