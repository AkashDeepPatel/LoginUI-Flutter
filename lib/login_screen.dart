import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:login_ui/home_screen.dart';

class LoginScreen extends StatelessWidget {
  static const String id = "login_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: Hero(
                tag: 'hero',
                child: CircleAvatar(
                  radius: 60.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/logo.png"),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration: buildInputDecoration("Enter your email"),
            ),
            SizedBox(
              height: 15,
            ),
            TextField(
              obscureText: true,
              textAlign: TextAlign.center,
              onChanged: (value) {},
              decoration: buildInputDecoration("Enter your password"),
            ),
            SizedBox(
              height: 50.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.lightBlueAccent,
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.id);
                },
                child: Text(
                  "Log In",
                  style: TextStyle(color: Colors.white),
                ),
                minWidth: 400,
                height: 50,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(
                    color: Colors.blueGrey,
                  ),
                ))
          ],
        ),
      ),
    );
  }

  InputDecoration buildInputDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.lightBlueAccent, width: 1.0),
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(32.0),
        ),
        borderSide: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
      ),
    );
  }
}
