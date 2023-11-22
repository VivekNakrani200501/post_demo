import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/listing_controller.dart';

class HomeScreen extends GetView<ListingController> {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Page"),),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 20,
                    itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  // controller.getPostListing(pageIndex:2 );
                },
                child: Container(
                  height: 400,
margin:  const EdgeInsets.only(top: 10,right: 10,left: 10),
                  width: double.infinity,

                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const ListTile(leading: CircleAvatar(radius: 25,),
                        title: Text("heloooo"),
                        subtitle: Text("sub name hiiiiiiiiii"),),
                      const SizedBox(
                        height: 5,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text("commentsssss"),
                      ),
                      Expanded(
                        child: PageView.builder(
                          controller: controller.pageController,
                          itemCount: 2,
                          allowImplicitScrolling: true,
                          onPageChanged: (int index) {
                            controller.selected = index; // Update the current page index

                          },
                          itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 10,left: 10,top: 5),
                          color: Colors.blue,
                          height: 55,
                          width: 55,
                        );

                            // if (videoData) {
                            //   return VideoThumbnailWidget(videoPath: sentMedia[index]);
                            // } else {
                            //   return ImageWidget(imagePath: sentMedia[index]);
                            // }
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          2,
                                (pageindex) => Container(
                              margin: const EdgeInsets.all(5),
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(30)),
                            )),
                      )



                    ],
                  ),
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
