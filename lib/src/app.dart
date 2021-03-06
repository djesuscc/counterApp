import 'package:counter/src/pages/counter_page.dart';
// import 'package:counter/src/pages/home_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Center(
          child: CounterPage(),
        ));
  }
}
