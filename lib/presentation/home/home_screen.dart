import 'package:colsmsgateway/presentation/campaign/campaign_screen.dart';
import 'package:colsmsgateway/presentation/dashboard/dashboard_screen.dart';
import 'package:colsmsgateway/presentation/home/controller/homecontroller.dart';
import 'package:colsmsgateway/presentation/setup/setup_screen.dart';
import 'package:colsmsgateway/presentation/sidebar/sidebar_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  final List<Widget> _screens = [
    DashboardScreen(),
    CampaignScreen(),
    SetupScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            drawer: const SideBarScreen(),
            appBar: AppBar(
              backgroundColor: Colors.lightGreen,
              elevation: 0,
              title: Text(
                "COLLABMO SMS GATEWAY",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            bottomNavigationBar: Obx(() => BottomNavigationBar(
                  onTap: controller.changeBottomBarIndex,
                  currentIndex: controller.bottomBarIndex.value,
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(Icons.home), label: "Home"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.album_sharp), label: "Campanhas"),
                    BottomNavigationBarItem(
                        icon: Icon(Icons.settings_suggest), label: "Setup"),
                  ],
                )),
            body: Obx(() => _screens[controller.bottomBarIndex.value])));
  }
}
