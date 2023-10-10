// ignore_for_file: prefer_const_constructors, deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class GetbillScreen extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const GetbillScreen({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ElevatedButton(
          onPressed: onPressed,
          // ignore: sort_child_properties_last
          child: Text(
            text,
            style: TextStyle(
              fontSize: 24, // Adjust the font size as needed
              fontWeight: FontWeight.bold, // Make the text bold
            ),
            ),
          style: ElevatedButton.styleFrom(
            primary: Colors.teal[200],
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            minimumSize: Size(200, 200),
          ),
        ),
        Positioned.fill(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white,
                  width: 10.0,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
