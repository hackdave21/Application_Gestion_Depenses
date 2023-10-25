
import 'package:flutter/material.dart';

import 'const.dart';
import 'pageHome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(labelSmall: style1, labelLarge: style1, labelMedium: style1),
       
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    
    );
  }
}

