import 'package:flutter/material.dart';
import '../widgets/molecules/toggle_buttons.dart';

const List<Widget> registerLogIn = <Widget>[Text('Register'), Text('Sign in')];

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final List<bool> _selectedRegisterLogIn = <bool>[true, false];

  void onToggleButtons(int index) {
    setState(() {
      // The button that is tapped is set to true, and the others to false.
      for (int i = 0; i < _selectedRegisterLogIn.length; i++) {
        _selectedRegisterLogIn[i] = i == index;
      }
    });
    if (index == 0) {
      Navigator.pushNamed(context, '/register');
    } else {
      Navigator.pushNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C6758),
      body: Column(
        children: [
          Expanded(child: Image.asset('assets/images/on_boarding_image.png')),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 17.0),
                  child: Text(
                    'Debates on\nTop Articles',
                    style: TextStyle(fontSize: 36),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 90.0),
                  child: Text(
                    'Bring files together your files, your tools, projects and people. Including a new mobile application',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 45.0),
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: CustomToggleButtons(
                        onPressed: onToggleButtons,
                        isSelected: _selectedRegisterLogIn,
                        children: registerLogIn,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
        ],
      ),
    );
  }
}
