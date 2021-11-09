import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';
import 'package:learn_getx/binding/home_binding.dart';
import 'package:learn_getx/home_page.dart';
import 'package:learn_getx/shop_page.dart';
import 'package:learn_getx/widgets/my_bottomsheet.dart';
import 'package:learn_getx/widgets/my_dialog.dart';
import 'package:learn_getx/widgets/my_snackbar.dart';

void main() async {
  await GetStorage.init();
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
      initialRoute: '/home',
      initialBinding: HomeBinding(),
      smartManagement:
          SmartManagement.full, // full | Keep factory | onlybuilder
      // home: MyDialogBox(),
      getPages: [
        GetPage(
            name: '/snackbar',
            page: () => const MySnackBar(),
            binding: HomeBinding()),
        // GetPage(name: '/bottom/:productdata', page: () =>const MyBottomSheet()),
        GetPage(name: '/bottom', page: () => const MyBottomSheet()),
        GetPage(name: '/dialog', page: () => MyDialogBox()),
        GetPage(name: '/home', page: () => HomePage(), binding: HomeBinding()),
        GetPage(name: '/shop', page: () => ShopPage()),
      ],
    );
  }
}
