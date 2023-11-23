import 'package:en_to_jp/widget/info_item.dart';
import 'package:flutter/material.dart';

import '../model/item_model.dart';
import '../widget/appbar_widget.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({super.key});

  final List<ItemModel> itemmodel = const [
    ItemModel(
      jpName: "rai masu ka",
      enName: "are you coming",
      sound: "sounds/phrases/are_you_coming.wav",
    ),
    ItemModel(
      jpName: "koudoku suru koto wa wasure nai de kudasai",
      enName: "dont forget to subscribe",
      sound: "sounds/phrases/dont_forget_to_subscribe.wav",
    ),
    ItemModel(
      jpName: "choushi wa dou desu ka",
      enName: "how are you feeling",
      sound: "sounds/phrases/how_are_you_feeling.wav",
    ),
    ItemModel(
      jpName: "watashi wa anime ga daisuk desu",
      enName: "i love anime",
      sound: "sounds/phrases/i_love_anime.wav",
    ),
    ItemModel(
      jpName: "programming ga daisuk",
      enName: "i love programming",
      sound: "sounds/phrases/i_love_programming.wav",
    ),
    ItemModel(
      jpName: "programming ga kantan",
      enName: "programming is easy",
      sound: "sounds/phrases/programming_is_easy.wav",
    ),
    ItemModel(
      jpName: "anata no namae wa nani desu ka",
      enName: "what is your name",
      sound: "sounds/phrases/what_is_your_name.wav",
    ),
    ItemModel(
      jpName: "doko ni iki masu ka",
      enName: "where are you going",
      sound: "sounds/phrases/where_are_you_going.wav",
    ),
    ItemModel(
      jpName: "e e im ga kuru",
      enName: "yes im coming",
      sound: "sounds/phrases/yes_im_coming.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget("Phrases"),
      body: ListView.separated(
        separatorBuilder: (context, index) => Container(
          color: Colors.pink,
          height: 2.5,
        ),
        itemCount: itemmodel.length,
        itemBuilder: (context, index) =>
            InfoItem(color: Colors.cyan, itemModel: itemmodel[index]),
      ),
    );
  }
}
