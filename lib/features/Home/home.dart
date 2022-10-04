import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';
import 'package:medi_app/features/Home/Utilis/card_container.dart';
import 'package:medi_app/features/Home/Utilis/container_listview.dart';

import '../../core/constants/app_asset.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Meditate',
                      style: CustomTextStyle.kBoldTextStyle,
                    ),
                    SvgPicture.asset(AppAsset.homeSearchIcon),
                  ],
                ),
                Divider(),
                ContainerListView(),
                CardWidget(
                  text: "A Song Moon of",
                  title: 'Start with the basics',
                  image: AppAsset.homeImageContainer1,
                  numOfSession: "9",
                ),
              SizedBox(height: 10.0.h,),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    color: ColorUtils.orangeContainerColor,
                      innerHeight: 98.87,
                    text: "The Sleep Hour",smallSize: 16.0.sp,
                    title: 'Ashna Mukherjee',
                    image: AppAsset.homeImageContainer1,
                    numOfSession: "3",
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    innerHeight: 98.87,
                    text: "A Song Moon of",smallSize: 16.0.sp,
                    title: "Peter Mach",
                    image: AppAsset.homeImageContainer2,
                    numOfSession: "5",
                  ),
                ),
              ],
            ),
                SizedBox(height: 10.0.h,),
                Row(
                  children: [
                    Expanded(
                      child: CardWidget(
                        color: ColorUtils.blueContainerColor,
                        innerHeight: 98.87,
                        text: "Relax with Me",smallSize: 16.0.sp,
                        title: 'Amanda James',
                        image: AppAsset.homeImageContainer3,
                        numOfSession: "3",
                      ),
                    ),
                    Expanded(
                      child: CardWidget(
                        color: ColorUtils.tealContainerColor,
                        innerHeight: 98.87,
                        text: "Sun and Energy",smallSize: 16.0.sp,
                        title: "Micheal Hiu",
                        image: AppAsset.homeImageContainer2,
                        numOfSession: "5",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
