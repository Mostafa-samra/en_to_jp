import 'package:en_to_jp/model/item_model.dart';
import 'package:flutter/material.dart';

import 'info_item.dart';

class PageItem extends StatelessWidget {
  const PageItem({super.key, required this.itemModel, required this.color});
  final ItemModel itemModel;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Row(
        children: [
          Container(color: Colors.white, child: Image.asset(itemModel.image!)),
          Expanded(child: InfoItem(itemModel: itemModel)),
        ],
      ),
    );
  }
}
