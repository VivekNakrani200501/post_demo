
import 'package:get/get_navigation/src/routes/get_route.dart';


import '../dependency_injection/global_screen_bindings.dart';
import '../homeScreen.dart';
import 'route_names.dart';

class RouteGenerator {
  static List<GetPage<dynamic>> generate() {
    return <GetPage<dynamic>>[
      GetPage(
        name: RouteNames.kMainRoute,
        page: () => const HomeScreen(),
        binding: GlobalScreenBindings(),
      )
    ];
  }}
