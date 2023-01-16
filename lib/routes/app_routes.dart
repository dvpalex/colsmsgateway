import 'package:colsmsgateway/presentation/home/binding/homebinding.dart';
import 'package:colsmsgateway/presentation/home/home_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String homescreen = "/homescreen";
  static String initialRoute = '/homescreen';

  static List<GetPage> pages = [
    GetPage(
        name: homescreen, page: () => HomeScreen(), bindings: [HomeBinding()])
  ];
}
