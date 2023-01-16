import 'package:colsmsgateway/presentation/campaign/binding/campaignbinding.dart';
import 'package:colsmsgateway/presentation/campaign/campaign_screen.dart';
import 'package:colsmsgateway/presentation/dashboard/binding/dashboardbinding.dart';
import 'package:colsmsgateway/presentation/dashboard/dashboard_screen.dart';
import 'package:colsmsgateway/presentation/home/binding/homebinding.dart';
import 'package:colsmsgateway/presentation/home/home_screen.dart';
import 'package:colsmsgateway/presentation/setup/binding/setupbinding.dart';
import 'package:colsmsgateway/presentation/setup/setup_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String homescreen = "/homescreen";
  static String dashboardscreen = "/dashboardscreen";
  static String campaignscreen = "/campaignscreen";
  static String setupscreen = "/setupscreen";
  static String initialRoute = '/homescreen';

  static List<GetPage> pages = [
    GetPage(
        name: homescreen, page: () => HomeScreen(), bindings: [HomeBinding()]),
    GetPage(
        name: dashboardscreen,
        page: () => const DashboardScreen(),
        bindings: [DashboardBinding()]),
    GetPage(
        name: campaignscreen,
        page: () => const CampaignScreen(),
        bindings: [CampaignBinding()]),
    GetPage(
        name: dashboardscreen,
        page: () => const SetupScreen(),
        bindings: [SetupBinding()]),
  ];
}
