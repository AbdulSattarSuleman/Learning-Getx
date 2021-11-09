import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_getx/widgets/my_dialog.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

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
                  Get.bottomSheet(
                      Container(
                        // width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.2,
                        color: Colors.green,

                        // decoration: const BoxDecoration(
                        //   borderRadius: BorderRadius.only(
                        //     topLeft: Radius.circular(20),
                        //     topRight: Radius.circular(20),
                        //   ),
                        // ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const CircularProgressIndicator(
                              color: Colors.white,
                            ),
                            const Text('Are you Sure'),
                            ElevatedButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text('Confirm'))
                          ],
                        ),
                      ),
                      isDismissible: true,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)));
                },
                child: const Text('Show Bottom SHeet')),
            ElevatedButton(
                onPressed: () {
                  Get.back(result: 'Coming from Bottom Sheep class');
                },
                child: const Text('navigate to Dialog Page')),
            Text('${Get.parameters['productdata']}')
          ],
        ),
      ),
    );
  }
}
