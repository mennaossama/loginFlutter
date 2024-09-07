import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/walcome.jpg",
                  height: 300,
                ),
                SizedBox(height: 12),
                Text(
                  'Welcome To The app',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 12),
                Text(
                  'We are excited to help you Book and manage your service appointment with ease',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 12),
                DotsIndicator(
                  dotsCount: 3,
                  decorator: DotsDecorator(
                    activeColor: const Color(0xff2f4ffe),
                  ),
                ),
                SizedBox(height: 12),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: SizedBox(
                    width: double.infinity,
                    height: 53,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xff2f4ffe)),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Create an account",
                      style: TextStyle(fontSize: 18, color: Color(0xff2f4ffe)),
                    ))
              ],
            ),
          ),
        ));
  }
}
