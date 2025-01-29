import 'package:flutter/material.dart';
import 'package:news/ui/Home/category/category_details.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = 'home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: categoryDetails(),
    );
  }
}
