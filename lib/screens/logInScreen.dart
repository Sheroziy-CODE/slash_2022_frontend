import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:slash_2022/screens/registerScreen.dart';

class LogInScreen extends StatefulWidget {
  LogInScreen ({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {


  Future<void> _submit(String user, String pw) async {

  }

  final userController = TextEditingController();
  final pwController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
                alignment: Alignment.topLeft,
                child: RichText(
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    children: <TextSpan> [
                      TextSpan(
                        text: " Let’s sign you in.",
                        style: TextStyle(height: 4, fontSize: 36),
                      ),
                      TextSpan(
                        text: "\n Welcome back! \n You’ve been missed so much.\n\n",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                    text: "Email Address",
                    style: TextStyle(height: 4, fontSize: 12),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: TextField(
                  controller: userController,
                  textAlign: TextAlign.left,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType:
                  TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: "example@gmail.com",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    alignLabelWithHint: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    fillColor: Colors.green[900],
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelStyle: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    labelStyle: const TextStyle(
                        fontSize: 18, color: Colors.grey),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
            ),
            RichText(
              textAlign: TextAlign.left,
              text: const TextSpan(
                text: "Password",
                style: TextStyle(height: 4,fontSize: 12),
              ),
            ),
            Center(
              child: SizedBox(
                width: 300,
                height: 45,
                child: TextField(
                  controller: pwController,
                  textAlign: TextAlign.left,
                  obscureText: true,
                  textAlignVertical: TextAlignVertical.center,
                  keyboardType: TextInputType.emailAddress,
                  style: const TextStyle(fontSize: 20, color: Colors.grey),
                  decoration: InputDecoration(
                    hintText: "************",
                    hintStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    alignLabelWithHint: false,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    fillColor: Colors.green[900],
                    floatingLabelAlignment: FloatingLabelAlignment.center,
                    floatingLabelStyle: const TextStyle(
                        fontSize: 15, color: Colors.grey),
                    labelStyle: const TextStyle(
                        fontSize: 18, color: Colors.grey),
                    focusColor: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 170,
            ),
            RichText(
              textAlign: TextAlign.left,
              text: TextSpan(
                text: "Don’t have an account? Let’s register now.",
                style: TextStyle(height: 4,fontSize: 12, color: Colors.grey),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const RegisterScreen()),
                    );
                  },
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: GestureDetector(
                child: Container(
                  width: 251,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(
                    child: Text(
                      "Log In",
                      style: TextStyle(fontSize: 18, color: Colors.green),
                      key: Key("login_button"),
                    ),
                  ),
                ),
                onTap: () {
                  _submit(userController.text, pwController.text);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}