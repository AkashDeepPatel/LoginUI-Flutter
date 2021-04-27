import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String id = "home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(28.0),
        decoration: BoxDecoration(
            gradient:
                LinearGradient(colors: [Colors.blue, Colors.lightBlueAccent])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Hero(
                tag: "hero",
                child: CircleAvatar(
                  radius: 110.0,
                  backgroundImage: AssetImage("assets/alucard.jpg"),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Welcome Alucard",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                " Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec hendrerit condimentum mauris id tempor. Praesent eu commodo lacus. Praesent eget mi sed libero eleifend tempor. Sed at fringilla ipsum. Duis malesuada feugiat urna vitae convallis. Aliquam eu libero arcu.",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
