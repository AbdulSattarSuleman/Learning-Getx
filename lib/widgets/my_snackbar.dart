import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/widgets/my_dialog.dart';

class MySnackBar extends StatelessWidget {
  const MySnackBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            MaterialButton(
              splashColor: Colors.black,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: () {
                Get.snackbar('Alert', 'This is snackbar',
                    colorText: Colors.red,
                    titleText: Text(''),
                    messageText: Text(''),
                    progressIndicatorBackgroundColor: Colors.red,
                    // snackStyle: SnackStyle.GROUNDED,
                    icon: const Icon(Icons.done),
                    isDismissible: true,
                    mainButton: TextButton(
                        style: TextButton.styleFrom(primary: Colors.red),
                        onPressed: () {},
                        child: Text('Ok')),
                    margin: const EdgeInsets.all(10),
                    snackPosition: SnackPosition.BOTTOM,
                    animationDuration: const Duration(seconds: 2),
                    // backgroundColor: Colors.black,
                    backgroundGradient:
                        const LinearGradient(tileMode: TileMode.clamp, colors: [
                      Colors.red,
                      Colors.blue,
                    ]));
              },
              child: const Text('Snack Bar'),
            ),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  Get.offNamed('/snackbar');
                },
                child: const Text("Get Off  Named Dialog Box")),
            Divider(),
            ElevatedButton(
                onPressed: () {
                  Get.to(MyDialogBox());
                },
                child: const Text('Get to Dialog Box'))
          ],
        ),
      ),
    );
  }
}
