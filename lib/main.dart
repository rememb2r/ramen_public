import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramen_for_everyone/recipe_page.dart';
import 'archive_page.dart';
import 'getx_controllers.dart';
import 'insta_page.dart';
import 'onbording_page.dart';
import 'style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // main 함수에서 async 사용하기 위함
  await Firebase.initializeApp(); // FireBase 초기화

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: RamenColor.black),
      scaffoldBackgroundColor: RamenColor.grey1,
      primaryColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
      // fontFamily: GoogleFonts.montserrat().fontFamily,
      // textTheme: GoogleFonts.montserratTextTheme(),
      colorScheme:
          ColorScheme.fromSwatch().copyWith(secondary: RamenColor.grey1),
    ),
    initialRoute: '/',
    getPages: [
      GetPage(name: '/', page: () => MyApp()),
      GetPage(name: '/login', page: () => Login()),
      GetPage(name: '/posting_insta', page: () => PostingInsta()),
      GetPage(name: '/posting_recipe', page: () => PostingRecipe()),
      GetPage(name: '/onbording', page: () => OnBording()),
    ],
  ));
}

/// MyApp 클래스가 3개의 TabView Page를 가지고 있음
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Controller controller = Get.put(Controller());
    return GetBuilder<Controller>(
      // init: Controller(),
      builder: (controller) => Scaffold(
        body: IndexedStack(
          index: controller.tabIndex,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            InstaPage(),
            Recipe(),
            Archive(),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 1),
            ],
          ),
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: RamenColor.red,
            type: BottomNavigationBarType.fixed,
            iconSize: 24,
            unselectedItemColor: RamenColor.white,
            selectedItemColor: RamenColor.yellow,
            // showSelectedLabels: false,
            // showUnselectedLabels: false,
            currentIndex: controller.tabIndex,
            onTap: (index) {
              controller.changeTabIndex(index);
              controller.updateAppBarTitle(RamenText().ramenAppBarTitle[index]);
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(RamenIcons().iconTabBarItem1Foreground),
                label: '라면갤러리',
              ),
              BottomNavigationBarItem(
                icon: Icon(RamenIcons().iconTabBarItem2Foreground),
                label: '레시피',
              ),
              BottomNavigationBarItem(
                icon: Icon(RamenIcons().iconTabBarItem3Foreground),
                label: '라면도감',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
