import 'package:flutter_sms/flutter_sms.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:permission_handler/permission_handler.dart';

class DashboardController extends GetxController {
  final totalsend = 0.obs;

  void addSend() {
    totalsend.value = totalsend.value + 1;
  }

  void _sendFlutterSMS(String message, List<String> recipents) async {
    await [Permission.camera, Permission.microphone, Permission.sms].request();

    String _result =
        await sendSMS(message: message, recipients: recipents, sendDirect: true)
            .catchError((onError) {
      print(onError);

      totalsend.value = totalsend.value + 1;
    });
    print(_result);
  }
}
