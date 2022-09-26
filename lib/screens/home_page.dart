import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/molecules/article/article.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C6758),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/svgs/profile.svg'),
                    SvgPicture.asset('assets/svgs/12.svg'),
                  ],
                ),
              ),
              Article(),
              Article(),
              Article(),
              Article()
            ],
          ),
        ),
      ),
    );
  }
}
