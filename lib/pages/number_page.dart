import 'package:en_to_jp/model/item_model.dart';
import 'package:flutter/material.dart';
import '../widget/appbar_widget.dart';
import '../widget/page_item.dart';

class NumberPage extends StatelessWidget {
  const NumberPage({super.key});
  final List<ItemModel> itemmodel = const [
    ItemModel(
      image: "assets/images/numbers/number_one.png",
      jpName: "ichi",
      enName: "One",
      sound: "sounds/numbers/number_one_sound.mp3",
    ),
    ItemModel(
      image: 'assets/images/numbers/number_two.png',
      jpName: 'ni',
      enName: 'Two',
      sound: "sounds/numbers/number_two_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_three.png",
      jpName: "san",
      enName: "Three",
      sound: "sounds/numbers/number_three_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_four.png",
      jpName: "yon",
      enName: "Four",
      sound: "sounds/numbers/number_four_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_five.png",
      jpName: "go",
      enName: "five",
      sound: "sounds/numbers/number_five_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_six.png",
      jpName: "roku",
      enName: "Six",
      sound: "sounds/numbers/number_six_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_seven.png",
      jpName: "nana",
      enName: "Seven",
      sound: "sounds/numbers/number_seven_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_eight.png",
      jpName: "hachi",
      enName: "Eight",
      sound: "sounds/numbers/number_eight_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_nine.png",
      jpName: "kyū",
      enName: "Nine",
      sound: "sounds/numbers/number_nine_sound.mp3",
    ),
    ItemModel(
      image: "assets/images/numbers/number_ten.png",
      jpName: "jū",
      enName: "Ten",
      sound: "sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Number"),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          color: Colors.pink,
          height: 2.5,
        ),
        itemCount: itemmodel.length,
        itemBuilder: (context, index) =>
            PageItem(color: Colors.amber, itemModel: itemmodel[index]),
      ),
    );
  }
}
