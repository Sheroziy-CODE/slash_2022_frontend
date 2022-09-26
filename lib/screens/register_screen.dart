import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:slash_2022/widgets/atoms/buttons/primary_button.dart';
import 'package:slash_2022/widgets/atoms/inputs/primary_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                          "Register now.",
                          style: TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30.0),
                        child: Text(
                          "Send your first argument to the world!",
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
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(bottom: 5),
                              child: Text(
                                "Repeat Password",
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
                child: PrimaryButton(
                  btnText: 'Register',
                  onTap: () {
                    Navigator.pushNamed(context, '/bio');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
