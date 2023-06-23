import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchingController extends GetxController {
  bool isDark = false;

  void changeTheme(state) {
    if (state == true) {
      isDark = true;
      Get.changeTheme(ThemeData.dark());
    } else {
      isDark = false;
      Get.changeTheme(ThemeData.light());
    }
    update();
  }

  final textController = TextEditingController();

  RxString controllerText = ''.obs;

  @override
  void onInit() {
    super.onInit();
    textController.addListener(() {
      controllerText.value = textController.text;
    });
  }
}
