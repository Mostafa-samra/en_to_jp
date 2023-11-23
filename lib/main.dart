import 'package:en_to_jp/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EnToJp());
}

class EnToJp extends StatelessWidget {
  const EnToJp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'En to Jp',
      home: HomePage(),
    );
  }
}
