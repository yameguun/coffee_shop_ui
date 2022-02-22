import 'package:coffee_shop_ui/pages/details_page.dart';
import 'package:coffee_shop_ui/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Coffee Shop App',
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      routes: <String, WidgetBuilder> {
        '/home': (BuildContext context) => HomePage(),
        '/details': (BuildContext context) => DetailsPage()
      },
    );
  }
}
