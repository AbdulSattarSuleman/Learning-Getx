import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/controller/home_controller.dart';

class ShopPage extends StatelessWidget {
  // const ShopPage({Key? key}) : super(key: key);

  HomeController homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ShopPage'),
      ),
      body: Column(
        children: [
          Text('Shop Page '),
          ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('Goto Home Page'))
        ],
      ),
    );
  }
}
