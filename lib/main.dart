import 'package:flutter/material.dart';
import 'package:flutter_tasbeeh/body/body.dart';
import 'package:showcaseview/showcaseview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShowCaseWidget(
        builder: Builder(
          builder: (context) => const BodyTasbeeh(),
        ),
      ),
    );
  }
}
