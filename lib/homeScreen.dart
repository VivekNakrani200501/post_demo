import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/listing_controller.dart';

class HomeScreen extends GetView<ListingController> {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 1,
                    itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  controller.getPostListing(pageIndex:2 );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: double.infinity,
                  color: Colors.blue,
                ),
              );
            },),
          )
        ],
      ),
    );
  }
}
