import 'package:colsmsgateway/presentation/dashboard/controller/dashboardcontroller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            TextButton(
                onPressed: () => controller.addSend(),
                child: const Text("Start"))
          ],
        ),
      ],
    );
  }
}
