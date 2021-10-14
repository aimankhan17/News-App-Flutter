import 'package:application/core/widget/drawer.dart';
import 'package:application/feature/news_headline/controller/news_headline_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsHeadlineView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NewsHeadlineController>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("News Headline"),
      ),
      drawer: getAppDrawer(),
      body: Obx(() {
        return controller.isLoading.isTrue
            ? Center(
                child: CircularProgressIndicator(),
              )
            : Container(
                margin: const EdgeInsets.all(10),
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        controller.articles[index].imageUrl == null
                            ? Container()
                            : Image.network(
                                controller.articles[index].imageUrl),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          controller.articles[index].title,
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          controller.articles[index].desc ?? "",
                        ),
                      ],
                    );
                  },
                  separatorBuilder: (context, index) => Divider(),
                  itemCount: controller.articles.length,
                ),
              );
      }),
    );
  }
}


//   @override
//   Widget build(BuildContext context) {


//         final controller = Get.find<NewsHeadlineController>();
        
//     return Scaffold(
//       appBar: AppBar(title: Text("News Headline"),),
//       drawer: getAppDrawer(),
//       body:Obx(() {
//         return controller.isLoading.isTrue
//             ? Center(
//                 child: CircularProgressIndicator(),
//               )
//             : Container(
//                 margin: const EdgeInsets.all(10),
//                 child: ListView.separated(
//                   itemBuilder: (context, index){
//                     return Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         controller.articles[index].imageUrl == null ?
//                             Container():
//                         Image.network(controller.articles[index].imageUrl),
//                         SizedBox(height: 8,),
//                         Text(controller.articles[index].title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
//                         SizedBox(height: 4,),
//                         Text(controller.articles[index].desc,),
//                       ],
//                     );
//                   },
//                   separatorBuilder: (context, index) => Divider(),
//                   itemCount: controller.articles.length,
//                 ),
//               );
//       }),
//     );
//   }
// }