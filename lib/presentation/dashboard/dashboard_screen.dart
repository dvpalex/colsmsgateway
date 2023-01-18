import 'dart:io';

import 'package:colsmsgateway/data/models/campaigntodevicemodel.dart';
import 'package:colsmsgateway/presentation/dashboard/controller/dashboardcontroller.dart';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:get/get_state_manager/get_state_manager.dart';

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
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
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Obx(() => Text(
                      "${controller.totalsend}",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 64,
                          color: Colors.white70),
                    )),
              ),
            ),
            TextButton(onPressed: () => callApi(), child: const Text("Start"))
          ],
        ),
      ],
    );
  }

  void callApi() async {
    var _dio = Dio();
    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient dioClient) {
      dioClient.badCertificateCallback =
          ((X509Certificate cert, String host, int port) => true);
      return dioClient;
    };

    var model = CampaignToDeviceModel(
        deviceid: "adoajdiajsdiojasoidjas",
        campaignid: "aoksdoaksdokasdok",
        isenabled: true);

    //  var resp = await _dio.get("http://localhost:5000/campaign/921829812981");

    var response = await _dio.post("https://localhost:5001/device/addcampaign/",
        data: model.toJson());

    controller.addSend();
  }
}
