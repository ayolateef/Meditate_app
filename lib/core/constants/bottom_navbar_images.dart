import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BottomNavModel {
  String image;
  String? label;

  BottomNavModel({required this.image, this.label});
}

class DemoBottomNavBar extends StatelessWidget {
  // List<BottomNavModel> navigations = [
  //   BottomNavModel(label: 'Home', image: 'images/shape.svg'),
  //   BottomNavModel(label: 'Meditate', image: 'images/meditate.svg'),
  //   BottomNavModel(label: 'Sleep',image: 'images/sleep.svg' ),
  //   BottomNavModel(label: 'Music', image:'images/music.svg'),
  //   BottomNavModel(label:'Me', image: 'images/me.svg'),
  // ];
   DemoBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}