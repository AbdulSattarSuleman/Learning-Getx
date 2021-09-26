import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDialog extends StatelessWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dialog Box'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                    title: 'Alert',
                    content: const Text('Delete Data'),
                    barrierDismissible: false,
                    textCancel: 'Cancel',
                    textConfirm: 'Confirm',
                  );
                },
                child: Text('Show Dialog Box'))
          ],
        ),
      ),
    );
  }
}
