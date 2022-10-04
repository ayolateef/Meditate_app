import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_app/core/constants/colors.dart';

class ContainerListView extends StatefulWidget {
  const ContainerListView({super.key});

  @override
  State<ContainerListView> createState() => _ContainerListViewState();
}

class _ContainerListViewState extends State<ContainerListView> {
  int selected = 0;

  final List<String> _items = [
    "All",
    "Bible in a Year",
    "Daillies",
    "Minutes",
    "November",
        "Daillies",
    "Minutes",
    "November"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.w),
        height: 50.h,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Container(
              margin:  EdgeInsets.symmetric(vertical: 10.h),
             
              decoration: BoxDecoration(
                  color: selected == index
                      ? ColorUtils.primaryGreenColor
                      : ColorUtils.primaryLightGreenColor,
                  borderRadius: BorderRadius.circular(100.0)),
              child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Padding(
                    padding: EdgeInsets.all(8.0.w),
                    child: Center(child: Text(_items[index], style: TextStyle(
                      color: selected == index ? ColorUtils.primaryWhiteColor : ColorUtils.primaryGreenColor
                    ) )),
                  )),
            ),
          );
        }, separatorBuilder: (BuildContext context, int index) {
            return SizedBox(width: 10.w,);

        },));
  }
}
