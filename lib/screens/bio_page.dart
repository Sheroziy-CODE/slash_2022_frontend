import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BioPage extends StatelessWidget {
  const BioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C6758),
      body: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 10.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    padding: const EdgeInsets.all(0),
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    icon: SvgPicture.asset('assets/svgs/left_arrow.svg'),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
