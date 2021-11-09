import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx/controller/home_controller.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  // HomeController homeController = Get.put(HomeController(),permanent: true);
  final storage = GetStorage();
  HomeController homeController = Get.find<HomeController>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Getx Storage')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Text(storage),
              TextField(
                controller: emailController,
                decoration: InputDecoration(hintText: 'Enter Email'),
              ),

              ElevatedButton(
                  onPressed: () {
                    if (GetUtils.isEmail(emailController.text)) {
                      storage.write('email', emailController.text);
                      emailController.clear();
                    } else {
                      Get.snackbar(
                          'Incorrect Email', 'Please Enter Correct Email',
                          snackPosition: SnackPosition.BOTTOM);
                    }
                  },
                  child: Text('Submit')),
              ElevatedButton(onPressed: () {}, child: Text('View Data')),
            ],
          ),
        ),
      ),
    );
  }
}
