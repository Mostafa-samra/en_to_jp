import 'package:flutter/material.dart';

class HomeItem extends StatelessWidget {
  const HomeItem(
      {super.key,
      required this.text,
      required this.color,
      required this.onTap});
  final String text;
  final Color color;
  final Widget onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => onTap,
            ));
      },
      child: Container(
        alignment: Alignment.centerLeft,
        width: double.infinity,
        height: 100,
        padding: const EdgeInsets.only(left: 16.0),
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
