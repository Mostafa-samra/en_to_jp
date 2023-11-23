import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../widget/appbar_widget.dart';
import '../widget/page_item.dart';

class FamilyMembersPage extends StatelessWidget {
  const FamilyMembersPage({super.key});

  final List<ItemModel> itemmodel = const [
    ItemModel(
        image: "assets/images/family_members/family_daughter.png",
        jpName: "musume",
        enName: "daughter",
        sound: "sounds/family_members/daughter.wav"),
    ItemModel(
        image: "assets/images/family_members/family_father.png",
        jpName: "chichi",
        enName: "father",
        sound: "sounds/family_members/father.wav"),
    ItemModel(
        image: "assets/images/family_members/family_grandfather.png",
        jpName: "sofu",
        enName: "grand father",
        sound: "sounds/family_members/grand father.wav"),
    ItemModel(
        image: "assets/images/family_members/family_grandmother.png",
        jpName: "o baachan",
        enName: "grand mother",
        sound: "sounds/family_members/grand mother.wav"),
    ItemModel(
        image: "assets/images/family_members/family_mother.png",
        jpName: "haha",
        enName: "mother",
        sound: "sounds/family_members/mother.wav"),
    ItemModel(
        image: "assets/images/family_members/family_older_brother.png",
        jpName: "furui wazawaza",
        enName: "older bother",
        sound: "sounds/family_members/older bother.wav"),
    ItemModel(
        image: "assets/images/family_members/family_older_sister.png",
        jpName: "ane",
        enName: "older sister",
        sound: "sounds/family_members/older sister.wav"),
    ItemModel(
        image: "assets/images/family_members/family_son.png",
        jpName: "on",
        enName: "son",
        sound: "sounds/family_members/son.wav"),
    ItemModel(
        image: "assets/images/family_members/family_younger_brother.png",
        jpName: "wakai brotter",
        enName: "younger brohter",
        sound: "sounds/family_members/younger brohter.wav"),
    ItemModel(
        image: "assets/images/family_members/family_younger_sister.png",
        jpName: "imoto",
        enName: "younger sister",
        sound: "sounds/family_members/younger sister.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Color"),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          color: Colors.pink,
          height: 2.5,
        ),
        itemCount: itemmodel.length,
        itemBuilder: (context, index) =>
            PageItem(color: Colors.brown, itemModel: itemmodel[index]),
      ),
    );
  }
}
