import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put<HomeController>(HomeController(), permanent: true);
  }
}
