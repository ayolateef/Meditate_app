import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_app/core/constants/app_asset.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';
import 'package:medi_app/features/Home/home.dart';

import '../../Home/Music.dart';
import '../../Home/medi.dart';

class Meditate extends StatefulWidget {
  const Meditate({super.key});

  @override
  State<Meditate> createState() => _MeditateState();
}

class _MeditateState extends State<Meditate> {
  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> _navigations = [
    BottomNavigationBarItem(
        label: 'Home',
        activeIcon: SvgPicture.asset(
          AppAsset.bottomNavHome,
          color: Colors.teal,
        ),
        icon: SvgPicture.asset(AppAsset.bottomNavHome)),
    BottomNavigationBarItem(
        label: 'Meditate',
        icon: SvgPicture.asset(
          AppAsset.bottomNavMeditate,
          color: Colors.green.withOpacity(0.4),
        ),
        activeIcon: SvgPicture.asset(AppAsset.bottomNavMeditate)
    ),
    BottomNavigationBarItem(
        label: 'Sleep', icon: SvgPicture.asset(AppAsset.bottomNavSleep)),
    BottomNavigationBarItem(
        label: 'Music', icon: SvgPicture.asset(AppAsset.bottomNavMusic)),
    BottomNavigationBarItem(
        label: 'Me', icon: SvgPicture.asset(AppAsset.bottomNavMe)),
  ];

  final _pages = const <Widget>[
    Home(),
    Medi(),
    // Music(),
  ];
PageController pageViewController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Expanded(
          child: PageView(
            physics: const NeverScrollableScrollPhysics(),

            controller: pageViewController,
            children:  _pages,
          ),
        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorUtils.bottomNavBarBackgroundColor,
            selectedItemColor: ColorUtils.bottomNavBarSelectedColor,
            unselectedItemColor: ColorUtils.bottomNavBarUnselectedItemColor,
            elevation: 0.0,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            items: _navigations.map((e) {
              return BottomNavigationBarItem(
                  activeIcon: e.activeIcon, icon: e.icon, label: e.label);
            }).toList()),
      ),
    );
  }
  void _onItemTapped(int index) {
    setState(() {
      pageViewController.jumpToPage(index);
      _selectedIndex = index;
      setState(() {});
    });
  }
}
