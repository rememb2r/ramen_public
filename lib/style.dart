import 'package:flutter/material.dart';

class RamenStyle {
  static const TextStyle styleFeedUserName = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle styleFeedContent = TextStyle(
    fontSize: 20,
  );
}

class RamenColor {
  static const Color white = Color(0xffFAFAFB);
  static const Color grey1 = Color(0xfff2f3f5);
  static const Color grey2 = Color(0xffD1D5DA);
  static const Color bluegrey = Color(0xff353d4a);
  static const Color black = Color(0xff1a1f27);
  static const Color blue = Color(0xff4583EE);
  static const Color red = Color.fromARGB(255, 255, 110, 66);
  static const Color yellow = Color.fromARGB(255, 255, 211, 66);
}

class RamenText {
  List<String> ramenAppBarTitle = ['라면갤러리', '레시피', '라면도감'];
}

/// 아이콘 모음
class RamenIcons {
  var iconTabBarItem1Foreground = Icons.browse_gallery_outlined;
  var iconTabBarItem1Actived = Icons.browse_gallery;
  var iconTabBarItem2Foreground = Icons.menu_book_rounded;
  var iconTabBarItem2Active = Icons.menu_book_rounded;
  var iconTabBarItem3Foreground = Icons.ramen_dining_outlined;
  var iconTabBarItem3Active = Icons.ramen_dining;
}
