import 'package:flutter/material.dart';
import 'package:groceryshoppinglistapp/WelcomePage.dart';

import 'Category/AddCategory.dart';
import 'Product/EditOneProduct.dart';
import 'Product/OneListWithProduct.dart';
import 'Product/OneListWithProductsManage.dart';
import 'Profile/EditProfile.dart';
import 'Profile/Profile.dart';
import 'Setting/Settings.dart';

void  main() async {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
