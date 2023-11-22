import 'dart:developer';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../common_api_provider.dart';
import '../const.dart';
import '../model/listing_model.dart';



class ListingController extends GetxController {
  Rx<File> picPath = File("").obs;
  PageController pageController = PageController();
  int selected = 0;
  Rx<PostListingModel?> myPostListModel = Rx<PostListingModel?>(null);
  final ApiProvider apiProvider = ApiProvider();
  int page = 1;
  RxBool isLoading = false.obs;
  String token = '5XndqoL9WJL-b64gFhFfg1liU3bgxMKzm';
  @override
  void onInit() {
    debugPrint("onInit");
    getPostListing();
    super.onInit();
  }

  Future<void> getMoreData() async {
    debugPrint("Enter in page");
    page++;
    isLoading.value = true;
    await getPostListing();

    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
  }

  Future<void> getPostListing({int? pageIndex}) async {
    if (pageIndex != null) {
      page = pageIndex;
    }

    Map<String, dynamic> passData = {
      postpageno : page.toString(),
      limit: limitValKey.toString(),
    };

    // if (currentLatLng != null) {
    //   passData.addAll({
    //     latKey: currentLatLng?.latitude.toString(),
    //     longKey: currentLatLng?.longitude.toString(),
    //   });
    // }

    dynamic data = await apiProvider.commonProvider(
        url: postListUrl,
        isHeader: true,
        isBody: true,
        name: "Print",
        header : {"UserId": "40", "Token": "5XndqoL9WJL-b64gFhFfg1liU3bgxMKzm"},
        bodyData: passData);

    debugPrint("data: $data");

    if (data[status] == true) {
      PostListingModel postListModel = PostListingModel.fromJson(data);

      log('postListModel  $postListModel');

      // if (page > 1) {
      //   postListModel.data.forEach((element) {
      //     myPostListModel.value.data.a(element);
      //   });
      //   debugPrint("Page is Greater than 1 : ${myPostListModel.value?.data}");
      //
      // } else {
      //   debugPrint("Page is at 1");
      //   myPostListModel.value = postListModel;
      }
    // } else {
      // debugPrint("dataMessage: ${data[message]}");
    // }

  }

}