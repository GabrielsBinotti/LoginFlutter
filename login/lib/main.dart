import 'package:flutter/material.dart';
import 'package:login/components/FormLogin.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Login",
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black,
              child: FormLogin(),
            )
          ],
        ),
      ),
    );
  }
}
