import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Services extends GetxController {
  var num = 1.obs;
  // Without building the whole screen

  icreaseNum() {
    num += 1;
  }
}
