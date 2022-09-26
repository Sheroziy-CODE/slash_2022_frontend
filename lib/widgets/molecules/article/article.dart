import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Article extends StatelessWidget {
  const Article({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: const Color(0xFF155347),
          border: Border.all(color: Colors.transparent),
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: SvgPicture.asset('assets/svgs/icon_news.svg')),
              const Text(
                'BBC',
              )
            ],
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Article A',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Text(
                    'A description of the article A and that’s interesting cuz I guess it is what is.',
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          SvgPicture.asset('assets/svgs/right_arrow.svg'),
        ],
      ),
    );
  }
}
