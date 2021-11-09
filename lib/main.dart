import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:learn_getx/widgets/my_bottomsheet.dart';
import 'package:learn_getx/widgets/my_dialog.dart';
import 'package:learn_getx/widgets/my_snackbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/dialog',
      // home: MyDialogBox(),
      getPages: [
        GetPage(name: '/snackbar', page: () =>const MySnackBar()),
        GetPage(name: '/bottom/:productdata', page: () =>const MyBottomSheet()),
        GetPage(name: '/dialog', page: () => MyDialogBox())
      ],
    );
  }
}
