import 'package:get/get.dart';
import '../../controllers/listing_controller.dart';


class GlobalScreenBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListingController>(() => ListingController());

  }
}
