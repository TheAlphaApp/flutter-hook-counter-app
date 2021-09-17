import 'package:flutter/material.dart';
import 'home_pages/home_custom_hook.dart';
import 'home_pages/home_page_hook.dart';
import 'home_pages/my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      // home: const HomePageCustomHook(),
      // home: const HomePageHook(),
      home: const MyHomePage(),
    );
  }
}
