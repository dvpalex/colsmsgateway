import 'package:colsmsgateway/presentation/home/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: Container(
            alignment: Alignment.center,
            width: double.infinity,
            decoration: new BoxDecoration(),
            child: Obx(() => Text(
                  "SMS GATEWAY : ${controller.deviceId}",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.amber[800],
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Container(
                alignment: Alignment.center,
                width: 200,
                height: 200,
                decoration: new BoxDecoration(
                  color: Colors.amber,
                  borderRadius: new BorderRadius.circular(16.0),
                ),
                child: Obx(() => Text(
                      "${controller.totalsend}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 64,
                          color: Colors.white70),
                    )),
              ),
            ),
          ],
        ),
      ],
    )));
  }
}
