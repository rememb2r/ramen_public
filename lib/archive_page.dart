import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramen_for_everyone/style.dart';

import 'get_ramen_card_widget.dart';
import 'getx_controllers.dart';
import 'main.dart';

final List<RamenCard> ramenCardList = [
  RamenCard(assetUrl: 'assets/images/ramen_01.webp', title: '진라면'),
  RamenCard(assetUrl: 'assets/images/ramen_02.webp', title: '비빔면'),
  RamenCard(assetUrl: 'assets/images/ramen_03.webp', title: '짜파게티'),
  RamenCard(assetUrl: 'assets/images/ramen_04.jpg', title: '신라면'),
  RamenCard(assetUrl: 'assets/images/ramen_05.jpg', title: '너구리'),
  RamenCard(assetUrl: 'assets/images/ramen_05.jpg', title: '육계장'),
  RamenCard(assetUrl: 'assets/images/ramen_06.webp', title: '미역라면'),
  RamenCard(assetUrl: 'assets/images/ramen_07.webp', title: '신라면블랙'),
  RamenCard(assetUrl: 'assets/images/ramen_08.jpg', title: '짜장면'),
  RamenCard(assetUrl: 'assets/images/ramen_09.jpg', title: '꼬꼬면'),
  RamenCard(assetUrl: 'assets/images/ramen_10.jpg', title: '사리면'),
  RamenCard(assetUrl: 'assets/images/ramen_11.webp', title: '짜파구리'),
  RamenCard(assetUrl: 'assets/images/ramen_12.webp', title: '오징어짬뽕'),
  RamenCard(assetUrl: 'assets/images/ramen_13.webp', title: '짜장면'),
  RamenCard(assetUrl: 'assets/images/ramen_14.webp', title: '진라면'),
  RamenCard(assetUrl: 'assets/images/ramen_15.jpg', title: '불닭볶음면'),
];

class ArchiveHome extends StatelessWidget {
  const ArchiveHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Controller controller = Get.put(Controller());

    return Container();
  }
}

class Archive extends StatelessWidget {
  const Archive({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: RamenColor.grey1,
        elevation: 0,
        title: Text(RamenText().ramenAppBarTitle[2],
            style: TextStyle(color: RamenColor.black)),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 24),
        child: Stack(
          children: [
            SafeArea(
              child: ListView(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  GridView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                    ),
                    itemCount: ramenCardList.length * 2,
                    itemBuilder: (context, index) {
                      return RamenCardWidget(
                        ramenCard: ramenCardList[index % ramenCardList.length],
                      );
                    },
                  ),
                  SizedBox(
                    height: 32,
                  ),
                ],
              ),
            ),
            SafeArea(
              child: Container(
                height: 60,
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: RamenColor.grey1,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 100,
                            height: 42,
                            alignment: Alignment.center,
                            child: Text(
                              "해외",
                              style: TextStyle(
                                color: RamenColor.grey2,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 42,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: RamenColor.white,
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "전체",
                              style: TextStyle(
                                color: RamenColor.black,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 42,
                            alignment: Alignment.center,
                            child: Text(
                              "한국",
                              style: TextStyle(
                                color: RamenColor.grey2,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
