import 'package:assesment_365/screens/DetailPage.dart';
import 'package:flutter/material.dart';
import 'package:assesment_365/screens/home.dart';

import 'models/account_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Assesment App',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/detail': (context) => DetailPage(item:Value(),title: '',),
      },
    );
  }
}

