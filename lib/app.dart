import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/arithmetic.dart';
import 'package:first_assignment/view/dashboard.dart';
import 'package:first_assignment/view/simple_interest.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First Assignment",
      theme: ThemeData(
          primarySwatch: Colors.green,
        // scaffoldBackgroundColor: Colors.amber[100]
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/simple-interest': (context) => const SimpleInterest(),
        '/area-circle': (context) => const AreaOfCircle(),
        '/arithmetic': (context) => const ArithmeticView(),
      },
    );
  }
}