import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ramen_for_everyone/style.dart';

import 'getx_controllers.dart';
import 'main.dart';

class PostingInsta extends StatelessWidget {
  const PostingInsta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Controller controller = Get.put(Controller());

    return Container();
  }
}

class InstaPage extends StatelessWidget {
  const InstaPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Controller controller = Get.put(Controller());

    if (controller.feedDataReceived.isNotEmpty) {
      return ListView.builder(
          itemCount: controller.feedDataReceived.length,
          itemBuilder: (context, index) {
            String photoUrl = controller.feedDataReceived[index].rPhotos;
            print("RRRCCC:" + photoUrl);
            String userName = controller.feedDataReceived[index].userName;
            String content = controller.feedDataReceived[index].content;

            return ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName, style: RamenStyle.styleFeedUserName),
                  Image.network(
                    photoUrl,
                    loadingBuilder: (BuildContext context, Widget child,
                        ImageChunkEvent? loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                              : null,
                        ),
                      );
                    },
                  ),
                  Text(content),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            );
          });
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }
}
