import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramen_for_everyone/style.dart';

import 'get_recipe_card_widget.dart';
import 'getx_controllers.dart';
import 'main.dart';

class PostingRecipe extends StatelessWidget {
  const PostingRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Controller controller = Get.put(Controller());

    return Container();
  }
}

final List<GetRecipeCard> getRecipeInfo = [
  GetRecipeCard(
      rPhotos: 'assets/images/ramen_01.webp',
      title: '속풀이용',
      recipe: '물이 끓기 전에 면을 넣는다',
      spicy: 5,
      cookTime: 5,
      link: ''),
  GetRecipeCard(
      rPhotos: 'assets/images/ramen_01.webp',
      title: '눈물 날때 먹는 라면',
      recipe: '마법의 가루',
      spicy: 5,
      cookTime: 5,
      link: ''),
  GetRecipeCard(
      rPhotos: 'assets/images/ramen_01.webp',
      title: '뱃속에 거지가 있을때',
      recipe: '청국장, 마늘, 고추',
      spicy: 5,
      cookTime: 5,
      link: ''),
  GetRecipeCard(
      rPhotos: 'assets/images/ramen_01.webp',
      title: '두 개 끓여야 하는 레시피',
      recipe: '콜라, 사이다',
      spicy: 5,
      cookTime: 5,
      link: ''),
];

class Recipe extends StatelessWidget {
  const Recipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Controller controller = Get.put(Controller());
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: RamenColor.grey1,
        elevation: 0,
        title: Row(
          children: [
            Text(RamenText().ramenAppBarTitle[1],
                style: TextStyle(color: RamenColor.black)),
            IconButton(
              icon: const Icon(
                CupertinoIcons.sort_down,
                size: 28.0,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    ...getRecipeInfo.map(
                      (GetRecipeCard getRecipeCard) => GetRecipeCardWidget(
                        getRecipeCard: getRecipeCard,
                      ),
                    ),
                    SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
