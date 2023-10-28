import 'package:flutter/material.dart';
import 'package:news/category/category_details.dart';
import 'package:news/home/home_screen.dart';

import 'my_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        CategoryDetails.routeName: (context) => CategoryDetails(),
      },
      initialRoute: CategoryDetails.routeName,
      theme: MyTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
