import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen ({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Expanded(
              child: Align(
                alignment: Alignment.topLeft,
                child: RichText(
                    textAlign: TextAlign.left,
                    text: const TextSpan(
                      children: <TextSpan> [
                        TextSpan(
                          text: " Register now.",
                          style: TextStyle(height: 4, fontSize: 36),
                        ),
                        TextSpan(
                          text: "\n Send your first argument to the world!",
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email Address',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Repeat Password',
                border: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}