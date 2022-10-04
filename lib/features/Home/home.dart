import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';
import 'package:medi_app/features/Home/Utilis/card_container.dart';
import 'package:medi_app/features/Home/Utilis/container_listview.dart';

import '../../core/constants/app_asset.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.0.h, vertical: 15.0.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Meditate',
                        style: CustomTextStyle.kBoldTextStyle,
                      ),
                      SvgPicture.asset(AppAsset.homeSearchIcon),
                    ],
                  )),
              Divider(),
              ContainerListView(),
              CardWidget(
                text: "A Song Moon of",
                cardChild: Text(
                  'Start with the basics',
                  style: CustomTextStyle.kContainerTextStyle2,
                ),
                image: AppAsset.homeImageContainer1,
                row: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          AppAsset.loveImage,
                          height: 10.h,
                          width: 11.23.w,
                        ),
                        SizedBox(width: 5.0.w),
                        Text(
                          '9 Session',
                          style: CustomTextStyle.ksmallTextStyle,
                        ),
                      ],
                    ),
                    SizedBox(
                            width: 189.0.w,),
                    Text(
                      'Start',
                      style: CustomTextStyle.ksmallTextStyle,
                    ),
                    SvgPicture.asset(
                      AppAsset.forwardArrow,
                    )
                  ],
                ),
              ),

              Row(
                children: [
                  Expanded(
                     child: CardWidget(
                    //   outerHeight: 192.0.h,
                    //   innerHeight: 98.87.h,
                     // smallerWidth: 166.57.w,
                      color: ColorUtils.orangeContainerColor,
                      text: "The Sleep Hour",smallSize: 16.0.sp,
                      cardChild: Text(
                        'Ashna Mukherjee' ,
                        style: CustomTextStyle.kContainerTextStyle2,
                      ),
                      image: AppAsset.homeImageContainer1,
                      row: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.loveImage,
                                height: 10.h,
                                width: 11.23.w,
                              ),
                              SizedBox(
                                width: 5.0.w,),
                              Text(
                                '3 Sessions',
                                style: CustomTextStyle.ksmallTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0.w,),
                          Text(
                            'Start',
                            style: CustomTextStyle.ksmallTextStyle,
                          ),
                          SvgPicture.asset(
                            AppAsset.forwardArrow,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                     child: CardWidget(
                    //   outerHeight: 192.0.h,
                    //   innerHeight: 98.87.h,
                       //smallerWidth: 166.57.w,
                      text: "Easy on the Mission",smallSize: 14.0.sp,
                      cardChild: Text(
                        'Peter Mach',
                        style: CustomTextStyle.kContainerTextStyle2,
                      ),
                      image: AppAsset.homeImageContainer2,
                      row: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.loveImage,
                                height: 10.h,
                                width: 11.23.w,
                              ),
                              SizedBox(width: 5.0.w,),
                              Text(
                                '5 minutes',
                                style: CustomTextStyle.ksmallTextStyle,
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 190.0.w,),
                          Text(
                            'Start',
                            style: CustomTextStyle.ksmallTextStyle,
                          ),
                          SvgPicture.asset(
                            AppAsset.forwardArrow,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                children: [
                  Expanded(
                    child: CardWidget(
                      //   outerHeight: 192.0.h,
                      //   innerHeight: 98.87.h,
                      // smallerWidth: 166.57.w,
                      color: ColorUtils.blueContainerColor,
                      text: "Relax with Me",smallSize: 16.0.sp,
                      cardChild: Text(
                        'Amanda James',
                        style: CustomTextStyle.kContainerTextStyle2,
                      ),
                      image: AppAsset.homeImageContainer3,
                      row: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.loveImage,
                                height: 10.h,
                                width: 11.23.w,
                              ),
                              SizedBox(
                                width: 5.0.w,),
                              Text(
                                '3 Sessions',
                                style: CustomTextStyle.ksmallTextStyle,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 10.0.w,),
                          Text(
                            'Start',
                            style: CustomTextStyle.ksmallTextStyle,
                          ),
                          SvgPicture.asset(
                            AppAsset.forwardArrow,
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CardWidget(
                      color: ColorUtils.tealContainerColor,
                      //   outerHeight: 192.0.h,
                      //   innerHeight: 98.87.h,
                      //smallerWidth: 166.57.w,
                      text: "Sun and Energy",smallSize: 16.0.sp,
                      cardChild: Text(
                        'Micheal Hiu',
                        style: CustomTextStyle.kContainerTextStyle2,
                      ),
                      image: AppAsset.homeImageContainer1,
                      row: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                AppAsset.loveImage,
                                height: 10.h,
                                width: 11.23.w,
                              ),
                              SizedBox(width: 5.0.w,),
                              Text(
                                '5 minutes',
                                style: CustomTextStyle.ksmallTextStyle,
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 190.0.w,),
                          Text(
                            'Start',
                            style: CustomTextStyle.ksmallTextStyle,
                          ),
                          SvgPicture.asset(
                            AppAsset.forwardArrow,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
