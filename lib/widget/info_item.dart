import 'package:en_to_jp/model/item_model.dart';
import 'package:flutter/material.dart';

class InfoItem extends StatelessWidget {
  const InfoItem({super.key, required this.itemModel, this.color});
  final ItemModel itemModel;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 100,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  itemModel.jpName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  itemModel.enName,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: () {
              itemModel.playoudi();
            },
            icon: const Icon(Icons.play_arrow),
          ),
        ],
      ),
    );
  }
}
