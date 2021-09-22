import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('GetX'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar('title', 'Please Check Internet Connection',
                snackPosition: SnackPosition.BOTTOM,
                backgroundColor: Colors.deepPurple,
                colorText: Colors.white,
                icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                mainButton: TextButton(
                  style: TextButton.styleFrom(
                    shape: const StadiumBorder(),
                  ),
                  onPressed: () {
                    print('Print');
                  },
                  child: const Text('Add Data'),
                ));
          },
          child: const Text('Show SnackBar'),
          style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
        ),
      ),
    );
  }
}
