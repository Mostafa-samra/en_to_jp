import 'package:en_to_jp/model/item_model.dart';
import 'package:flutter/material.dart';
import '../widget/appbar_widget.dart';
import '../widget/page_item.dart';

class ColorPage extends StatelessWidget {
  const ColorPage({super.key});
  final List<ItemModel> itemmodel = const [
    ItemModel(
        image: "assets/images/colors/color_black.png",
        jpName: "kuroi",
        enName: "black",
        sound: "sounds/colors/black.wav"),
    ItemModel(
        image: "assets/images/colors/color_brown.png",
        jpName: "kasshoku",
        enName: "brown",
        sound: "sounds/colors/brown.wav"),
    ItemModel(
        image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "dusty yellow",
        enName: "dusty yellow",
        sound: "sounds/colors/dusty yellow.wav"),
    ItemModel(
        image: "assets/images/colors/color_gray.png",
        jpName: "haiiro",
        enName: "gray",
        sound: "sounds/colors/gray.wav"),
    ItemModel(
        image: "assets/images/colors/color_green.png",
        jpName: "midori",
        enName: "green",
        sound: "sounds/colors/green.wav"),
    ItemModel(
        image: "assets/images/colors/color_red.png",
        jpName: "akai",
        enName: "red",
        sound: "sounds/colors/red.wav"),
    ItemModel(
        image: "assets/images/colors/color_white.png",
        jpName: "shiroi",
        enName: "white",
        sound: "sounds/colors/white.wav"),
    ItemModel(
        image: "assets/images/colors/yellow.png",
        jpName: "kiiro",
        enName: "yellow",
        sound: "sounds/colors/yellow.wav"),
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
            PageItem(color: Colors.blueGrey, itemModel: itemmodel[index]),
      ),
    );
  }
}
