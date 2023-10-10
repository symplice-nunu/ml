import 'package:flutter/material.dart';
import 'package:milife_app/screens/bill/get_bill.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
          child: GetbillScreen(
            text: 'Get Bill',
            onPressed: () {
              // Add your button click logic here
            },
          ),
        ),
    );
  }
}
