import 'package:colsmsgateway/presentation/home/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SideBarScreen extends StatelessWidget {
  const SideBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var homeController = Get.find<HomeController>();

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child: Obx(() => Text("DevideId : ${homeController.deviceId} "))),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Voltar'),
            onTap: () => {Get.back()},
          ),
        ],
      ),
    );
  }
}
