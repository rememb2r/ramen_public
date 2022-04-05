import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

class SingleFeed {
  String? rPhotos;
  String? userName;
  String? content;

  SingleFeed({this.rPhotos, this.userName, this.content});
}

// 컨트롤러, GetX Controller
class Controller extends GetxController {
  var tabIndex = 0;
  var feedDataReceived = [];
  var appBarTitle = '모두의 라면';

  @override
  void onInit() {
    receiveFeedData();
    super.onInit();
  }

  void receiveFeedData() async {
    final feedsCollection = FirebaseFirestore.instance.collection('feeds');
    String inputSearch = '';

    // 검색 Query, 여기서는 '' 를 검색하여 모든 데이터를 가져옴
    var resultCR = await feedsCollection
        .where('content', isGreaterThanOrEqualTo: inputSearch)
        .where('content', isLessThan: inputSearch + '\uf7ff')
        .get();
    final documents =
        resultCR.docs; // QuerySnapshot <> 을 <List> QueryDocumentSnapshot 으로 변환

    // <List> QueryDocumentSnapshot 에서 하나씩 꺼내서 feed 리스트에 add
    for (var document in documents) {
      SingleFeed singleFeed = SingleFeed(
          rPhotos: document.get('rPhotoUrl'),
          userName: document.get('userName'),
          content: document.get('content'));
      feedDataReceived.add(singleFeed);
    }
    update();
  }

  void updateAppBarTitle(String title) {
    appBarTitle = title;
    update();
  }

  void changeTabIndex(int index) {
    tabIndex = index;
    update();
  }
}
