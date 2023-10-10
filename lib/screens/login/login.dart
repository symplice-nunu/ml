// ignore_for_file: prefer_const_constructors, must_be_immutable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:milife_app/screens/signup/signup.dart';

// ignore: use_key_in_widget_constructors
class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView( // Wrap with SingleChildScrollView
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Display the image at the top
              Image.asset(
                'assets/images/login.png',
              ),
              Text(
                'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 27,
                  fontFamily: 'Times New Roman',
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    // ignore: prefer_const_constructors
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(
                          color: Colors.teal[200],
                        fontFamily: 'Times New Roman',
                        
                        ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal.shade200)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal.shade200)),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Colors.teal[200],
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.teal[200],
                          fontFamily: 'Times New Roman',
                          ),
                        focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal.shade200)),
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.teal.shade200)),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.teal[200],
                        ),
                      ),
                    ),
                    SizedBox(height: 32.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: ElevatedButton(
                      onPressed: () {
                        print('Login Button Pressed');
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal.shade200),
                        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0), // Adjust the value for the desired rounded corners
                          ),
                        ),
                      ),
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'Times New Roman',
                        ),
                      ),
                    ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'Forgot your password ?',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Times New Roman',
                        color: Colors.teal[200],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      margin: EdgeInsets.only(bottom: 79),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account ?",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Times New Roman',
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(width: 4),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignupScreen()),
                              );
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Times New Roman',
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
