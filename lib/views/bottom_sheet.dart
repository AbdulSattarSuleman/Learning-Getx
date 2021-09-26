// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBottomSheet extends StatelessWidget {
  const MyBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Navigation'),
      ),
      body: Container(
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
                Container(
                  height: 140,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 6,
                      ),
                      Icon(
                        Icons.alternate_email,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                isDismissible: true,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: Colors.deepPurple);
          },
          child: Text('Show Bottom Sheet'),
        ),
      ),
    );
  }
}
