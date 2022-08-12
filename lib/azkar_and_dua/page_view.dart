import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class AzkarAndDua extends StatefulWidget {
  const AzkarAndDua({super.key});

  @override
  State<AzkarAndDua> createState() => _AzkarAndDuaState();
}

PageController pageController = PageController(initialPage: 0);

class _AzkarAndDuaState extends State<AzkarAndDua> {
  //PageView value
  final int _pagesnum = 3;
  //Pageview controller
  int _thispage = 0;
  //Animation for Pageview, scroll pages
  Widget _index(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
    );
  }

  //PageBuilder
  // ignore: unused_element
  List<Widget> _buildPage() {
    List<Widget> list = [];
    for (int i = 0; i < _pagesnum; i++) {
      list.add(i == _thispage ? _index(true) : _index(false));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const NeverScrollableScrollPhysics(),
      controller: pageController,
      onPageChanged: (int page) {
        setState(() {
          _thispage = page;
        });
      },
      children: const <Widget>[
        FirstPage(),
        SecondPage(),
        ThirdPage(),
      ],
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/image/words/allohuakbar.png',
          width: 180,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Bodoni',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                "Allohu Akbar",
                rotateOut: false,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 16,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                'فَٱذْكُرُونِىٓ أَذْكُرْكُمْ وَٱشْكُرُوا۟ لِى وَلَا تَكْفُرُونِ *١٥٢',
                textAlign: TextAlign.center,
                rotateOut: false,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                'remember Me; I will remember you. \n And thank Me, and never be ungrateful.',
                textAlign: TextAlign.center,
                rotateOut: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const SizedBox(height: 35),
        Image.asset(
          'assets/image/words/alhamdulillah.png',
          width: 250,
        ),
        const SizedBox(height: 12),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Bodoni',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                "Alhamdulillah",
                rotateOut: false,
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                'يَـٰٓأَيُّهَا ٱلَّذِينَ ءَامَنُوا۟ ٱذْكُرُوا۟ ٱللَّهَ ذِكْرًۭا كَثِيرًۭا ٤١\n'
                'وَسَبِّحُوهُ بُكْرَةًۭ وَأَصِيلًا ٤٢',
                textAlign: TextAlign.center,
                rotateOut: false,
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                'O believers! Always remember Allah often,\n'
                'and glorify Him morning and evening.\n',
                textAlign: TextAlign.center,
                rotateOut: false,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 0),
          child: Image.asset(
            'assets/image/words/subhanalloh.png',
            width: 200,
          ),
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 20,
            fontFamily: 'Bodoni',
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                "Subhanalloh",
                rotateOut: false,
              ),
            ],
          ),
        ),
        const SizedBox(height: 6),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 15,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                'فَٱصْبِرْ عَلَىٰ مَا يَقُولُونَ وَسَبِّحْ بِحَمْدِ رَبِّكَ قَبْلَ طُلُوعِ ٱلشَّمْسِ وَقَبْلَ غُرُوبِهَا ۖ\n'
                ' وَمِنْ ءَانَآئِ ٱلَّيْلِ فَسَبِّحْ وَأَطْرَافَ ٱلنَّهَارِ لَعَلَّكَ تَرْضَىٰ ١٣٠',
                textAlign: TextAlign.center,
                rotateOut: false,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 9,
        ),
        DefaultTextStyle(
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black,
          ),
          child: AnimatedTextKit(
            pause: const Duration(milliseconds: 5000),
            repeatForever: false,
            totalRepeatCount: 1,
            animatedTexts: [
              RotateAnimatedText(
                'So be patient ˹O Prophet˺ with what they say.\n'
                ' And glorify the praises '
                'of your Lord before sunrise'
                ' and before sunset,\n'
                ' and glorify Him in the hours of the night'
                'and at both ends of the day'
                '1 so that you may be pleased ˹with the reward˺.',
                textAlign: TextAlign.center,
                rotateOut: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
