import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/widgets/my_bottomsheet.dart';
import 'package:learn_getx/widgets/my_snackbar.dart';

class MyDialogBox extends StatelessWidget {
  // const MyDialogBox({Key? key}) : super(key: key);

  TextEditingController inputValue = TextEditingController();
  String valueGet = '';
  var dataGet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  Get.defaultDialog(
                      barrierDismissible: false,
                      textConfirm: "Confirm",
                      textCancel: 'Cancel',
                      onConfirm: () {
                        Get.back();
                      },
                      onCancel: () {
                        Get.to(MyBottomSheet());
                        Get.back();
                      },
                      title: "Are you Sure ?",
                      content: Column(
                        children: [
                          TextField(
                            controller: inputValue,
                          )
                        ],
                      ));
                },
                child: Text('Dialog Box')),
            Text(inputValue.text),
            const Text('inputValue.text'),
            const Divider(),
            ElevatedButton(
                onPressed: () async {
                  dataGet = await Get.toNamed('/bottom/Macbook',
                      arguments: 'Coming from Dialog Box');
                },
                child: const Text('Get back toNamed Snack bar Page')),
            const Divider(),
            ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text('Get Back using get off all to Snack bar Page')),
            Text(dataGet.toString())
          ],
        ),
      ),
    );
  }
}
