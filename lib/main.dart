import 'package:flutter/material.dart';
import 'package:slash_2022/screens/bio_page.dart';
import 'package:slash_2022/screens/on_boarding.dart';
import 'package:slash_2022/screens/home_page.dart';
import 'package:slash_2022/screens/log_in_screen.dart';
import 'package:slash_2022/screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

const List<Widget> registerLogIn = <Widget>[Text('Register'), Text('Sign in')];

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _buildTheme(),
      routes: {
        '/login': (context) => LogInScreen(),
        '/register': (context) => const RegisterScreen(),
        '/bio': (context) => const BioPage(),
        '/': (context) => const HomePage(),
        '/on_boarding': (context) => OnBoarding(),
      },
      initialRoute: '/on_boarding',
    );
  }

  ThemeData _buildTheme() {
    return ThemeData(
      primaryColor: Colors.lightBlue[800],
      textTheme: const TextTheme(
        bodyText1: TextStyle(
          color: Colors.white,
        ),
        bodyText2: TextStyle(
          color: Colors.white,
        ),
        headline1: TextStyle(
            fontSize: 72.0, fontWeight: FontWeight.bold, color: Colors.white),
        headline6: TextStyle(
            fontSize: 36.0, fontStyle: FontStyle.italic, color: Colors.white),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<bool> _selectedRegisterLogIn = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: RichText(
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    text: "Debates on Top Articles ",
                    style: TextStyle(fontSize: 35),
                  ),
                ),
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text:
                    "Bring files together your files,\n your tools, projects and people. Including\n a new mobile application",
                style: TextStyle(height: 2, fontSize: 10),
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int index) {
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
                  },
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  selectedColor: Colors.green,
                  fillColor: Colors.white,
                  color: Colors.white,
                  constraints: BoxConstraints(
                      minWidth: (MediaQuery.of(context).size.width - 80) / 2,
                      minHeight: 40),
                  isSelected: _selectedRegisterLogIn,
                  children: registerLogIn,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
