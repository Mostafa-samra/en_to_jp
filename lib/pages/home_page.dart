import 'package:en_to_jp/pages/number_page.dart';
import 'package:en_to_jp/widget/appbar_widget.dart';
import 'package:flutter/material.dart';

import '../widget/home_item.dart';
import 'color_page.dart';
import 'family_members_page.dart';
import 'phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBarWidget("En to Jp"),
        body: const Column(
          children: [
            HomeItem(
              color: Colors.amber,
              text: "Number",
              onTap: NumberPage(),
            ),
            HomeItem(
              color: Colors.blueGrey,
              text: "Color",
              onTap: ColorPage(),
            ),
            HomeItem(
              color: Colors.brown,
              text: "Family Members",
              onTap: FamilyMembersPage(),
            ),
            HomeItem(
              color: Colors.cyan,
              text: "Phrases",
              onTap: PhrasesPage(),
            ),
          ],
        ));
  }
}
