import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../count/counter.dart';
import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          Text(
            'SettingsView is working',
            style: TextStyle(fontSize: 20),
          ),
          ElevatedButton(
              child: Text("add "),
              onPressed: () {
                Get.to(() => Counter());
              }),
        ],
      )),
    );
  }
}
