import 'package:flutter/material.dart';
import 'package:ramen_for_everyone/style.dart';

class RamenCard {
  String? assetUrl;
  String? title;
  RamenCard({this.assetUrl, this.title});
}

class RamenCardWidget extends StatelessWidget {
  const RamenCardWidget({
    Key? key,
    required this.ramenCard,
  }) : super(key: key);
  final RamenCard ramenCard;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: RamenColor.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Spacer(),
          Expanded(
            flex: 16,
            child: Image.asset(
              '${ramenCard.assetUrl}',
              fit: BoxFit.fitHeight,
            ),
          ),
          Spacer(),
          Text(
            "${ramenCard.title}",
            style: TextStyle(
              fontSize: 12,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
