import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../extension/icons/IconQuran.dart';
import '../extension/icons/IconTasbeeh.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  //_changeIteam value, or like page cotroller
  // ignore: unused_field
  int _currentPage = 3;
  //Example :
  void _changeIteam(int value) {
    // ignore: avoid_print
    print(value);
    setState(() {
      _currentPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ConvexAppBar.badge(
      const {3: ''},
      initialActiveIndex: 2,
      activeColor: const Color.fromRGBO(180, 136, 17, 25),
      style: TabStyle.flip,
      backgroundColor: const Color(0xFFFAEDE0),
      height: 50,
      // ignore: prefer_const_literals_to_create_immutables
      items: [
        //PrayerTime
        const TabItem(
          icon: Icon(
            IconTasbeeh.mosque,
            size: 40,
            color: Color.fromARGB(231, 104, 77, 8),
          ),
          title: 'Prayer time',
        ),
        //ReadQuran
        const TabItem(
          icon: Icon(
            IconQuran.quran,
            size: 40,
            color: Color.fromARGB(231, 104, 77, 8),
          ),
          title: 'Quran',
        ),
        //Tasbeeh
        const TabItem(
          icon: Icon(
            IconTasbeeh.tasbeeh,
            size: 36,
            color: Color.fromARGB(231, 104, 77, 8),
          ),
          title: 'Tasbeeh',
        ),
        //Qibla
        const TabItem(
          icon: Icon(
            IconTasbeeh.compass,
            size: 40,
            color: Color.fromARGB(231, 104, 77, 8),
          ),
          title: 'Kibla',
        ),
        //More
        const TabItem(
          icon: Icon(
            Icons.more_horiz_rounded,
            size: 40,
            color: Color.fromARGB(231, 104, 77, 8),
          ),
          title: 'More',
        ),
      ],
      onTap: _changeIteam,
    );
  }
}
