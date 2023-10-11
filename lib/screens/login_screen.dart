import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.white24, Colors.white],
                ),
              ),
            ),
            const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                    image: AssetImage("./assets/logo/TeamHub_Logo.png"),
                  ),
                  Text(
                    "asd",
                    style: TextStyle(fontSize: 50),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
