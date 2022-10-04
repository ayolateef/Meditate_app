//import 'package:audio_wave/audio_wave.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';
// import 'package:wave/config.dart';
// import 'package:wave/wave.dart';

import '../../core/constants/app_asset.dart';

class Music extends StatefulWidget {
  const Music({Key? key}) : super(key: key);

  @override
  State<Music> createState() => _MusicState();
}

class _MusicState extends State<Music> {
  int _selectedIndex = 0;

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorUtils.primaryWhiteColor,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        //ColorUtils.bottomNavBarBackgroundColor,
        currentIndex: _selectedIndex,
        elevation: 2,
        selectedItemColor: ColorUtils.selectedItemColor,
        unselectedItemColor: ColorUtils.unselectedItemColor,
        onTap: _onItemTapped,

        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.uploadIcon),
                label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.rhymesIcon),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.menuIcon),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.menuIcon),
              label: ''
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(AppAsset.menuIconCircled),
              label: ''
          )
        ],


      ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.0.h),
                    padding: EdgeInsets.symmetric(horizontal: 10.0.w, vertical: 12.0.h),
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                            onTap:() => Navigator.of(context).pop,
                            child: SvgPicture.asset(AppAsset.loveImage)),
                        SvgPicture.asset(AppAsset.horizontalIcon),
                    ]),
                  ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(AppAsset.cdRightIcon).blurred(blur: 2, colorOpacity: 0.2),
                Image.asset(AppAsset.cdMidIcon,height: 245.43..h, width: 245.43.w,),
                  Image.asset(AppAsset.cdLeftIcon).blurred(blur: 2, colorOpacity: 0.2),
              ],),
                  SizedBox(height: 10.0.h,),
              Text(
                  'Introduction',
                  style: CustomTextStyle.kBoldTextStyle
                ),
                Text(
                  'Dec 29: Pre-launched',
                  style: CustomTextStyle.kFaintTextStyle
                ),
                SizedBox(
                  height: 110.0.h,
                ),
                // AudioWave(
                //   height: 200.h,
                //   width: double.infinity,
                //   spacing: 1.5,
                //   animationLoop: 6,
                //   bars: [
                //
                //     AudioWaveBar(height: 70.0.h, color:ColorUtils.orangeContainerColor ),
                //     AudioWaveBar(height: 80.0.h, color: ColorUtils.primaryWhiteColor)
                //   ],
                //     // color: Colors.yellow,
                     Image.asset(AppAsset.musicWaveIcon,),

                SizedBox(
                  height: 30.0.h,
                ),
                SvgPicture.asset(AppAsset.playIcons)
              ],),
          ),
        )
        );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
