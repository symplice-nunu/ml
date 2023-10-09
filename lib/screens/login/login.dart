import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Display the image at the top
            Image.asset(
              'assets/images/login.png',
            ),
            SizedBox(height: 16.0),
            Padding(padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
              decoration: InputDecoration(
                labelText: 'Username',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                // Implement your login logic here
                // For simplicity, let's just print a message
                print('Login Button Pressed');
              },
              child: Text('Login'),
            ),
              ],
            ),
            )
          ],
        ),
    );
  }
}
