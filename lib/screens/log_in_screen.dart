import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/atoms/buttons/primary_button.dart';
import '../widgets/atoms/inputs/primary_text_field.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen ({super.key});

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
      backgroundColor: const Color(0xFF1C6758),
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 10.0),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      padding: const EdgeInsets.all(0),
                      onPressed: () {
                        Navigator.pushNamed(context, '/on_boarding');
                      },
                      icon: SvgPicture.asset('assets/svgs/left_arrow.svg'))
                ],
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 80.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 6.0),
                        child: Text(
                          "Let’s sign you in.",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          "Welcome back! You’ve been missed so much.",
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromRGBO(255, 255, 255, 80)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Email Address",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            PrimaryTextField(
                              hintText: 'example@gmail.com',
                              textInputType: TextInputType.emailAddress,
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Password",
                                style: TextStyle(fontSize: 14),
                              ),
                            ),
                            PrimaryTextField(
                              hintText: '********',
                              obscureText: true,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(bottom: 45.0),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 15),
                      child: Text(
                        "Don’t have an account? Let’s register now.",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(255, 255, 255, 40)),
                      ),
                    ),
                    PrimaryButton(
                      btnText: 'Login',
                      onTap: () {
                        Navigator.pushNamed(context, '/');
                      },
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