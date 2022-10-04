// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../core/constants/app_asset.dart';
// import '../../../core/constants/colors.dart';

// class BottomNavItem extends StatefulWidget {
//   const BottomNavItem({Key? key}) : super(key: key);

//   @override
//   State<BottomNavItem> createState() => _BottomNavItemState();
// }

// class _BottomNavItemState extends State<BottomNavItem> {
//   int _selectedIndex = 0;


//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: ColorUtils.bottomNavBarBackgroundColor,
//           selectedItemColor: ColorUtils.bottomNavBarSelectedColor,
//           unselectedItemColor: ColorUtils.bottomNavBarUnselectedItemColor,
//           elevation: 0.0,
//           currentIndex: _selectedIndex,
//           onTap: _onItemTapped,
//           items: _navigations.map((e) {
//             return BottomNavigationBarItem(
//                 activeIcon: e.activeIcon, icon: e.icon, label: e.label);
//           }).toList()),
//     ),);
//   }
// }
