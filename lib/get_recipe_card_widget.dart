import 'package:flutter/material.dart';
import 'package:ramen_for_everyone/style.dart';

class GetRecipeCard {
  String? rPhotos;
  String? title;
  String? recipe;
  int? spicy;
  int? cookTime;
  String? link;
  GetRecipeCard(
      {this.rPhotos,
      this.title,
      this.recipe,
      this.spicy,
      this.cookTime,
      this.link});
}

class GetRecipeCardWidget extends StatelessWidget {
  const GetRecipeCardWidget({
    Key? key,
    required this.getRecipeCard,
  }) : super(key: key);

  final GetRecipeCard getRecipeCard;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 6),
        child: ListTile(
          leading: Container(
            width: 64,
            alignment: Alignment.center,
            child: Image.asset(
              "${getRecipeCard.rPhotos}",
              fit: BoxFit.fitWidth,
            ),
          ),
          horizontalTitleGap: 8,
          title: Row(
            children: [
              Text(
                "${getRecipeCard.title}",
                style: TextStyle(
                  color: RamenColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Spacer(),
              Text(
                "${getRecipeCard.spicy} spicy",
                style: TextStyle(
                  color: RamenColor.bluegrey,
                  fontSize: 12,
                ), // 입력된 수 만큼 아이콘을 출력한다, 최대 5
              ),
              SizedBox(width: 8),
              Text(
                "${getRecipeCard.cookTime} min",
                style: TextStyle(
                  color: RamenColor.bluegrey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          subtitle: Text(
            "${getRecipeCard.recipe}",
            style: TextStyle(
              color: RamenColor.black,
              fontSize: 12,
            ),
          ),
          contentPadding: EdgeInsets.zero,
          trailing: Icon(
            Icons.arrow_forward_ios,
            size: 16,
          ),
        ),
      ),
    );
  }
}
