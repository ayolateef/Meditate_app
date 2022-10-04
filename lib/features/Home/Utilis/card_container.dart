import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';

import '../../../core/constants/app_asset.dart';

class CardWidget extends StatelessWidget {
  final String? image;
  final String text;
  //final String smallText;
  //final TextStyle? style;
   double? outerHeight;
  double? innerHeight;
  // double? smallerWidth;
  final Color? color;
  final String  title;

  final String numOfSession;
  double? smallSize;



  CardWidget({super.key,
  required this.title,
  this.image,
  required this.text,
  //required this.smallText,
   //this.style,
  this.color,
  this.outerHeight,
  //
  this.innerHeight,
  //
  // this.smallerWidth
  this.smallSize,

  required this.numOfSession
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: outerHeight ?? null,
      child: Card(
        //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
        shadowColor: Colors.grey,
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0.h)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Container(
            width: double.infinity,
            height: innerHeight ??   null,

            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0.r), color: color ?? ColorUtils.containerColor1
            ),
            child: SvgPicture.asset(image!),
          ),


        Container(

          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text, style:  CustomTextStyle.kBoldTextStyle.copyWith(fontSize: smallSize),
              ),
              SizedBox(height: 10.0.h,),
              Text(
                title,
                style: CustomTextStyle.kContainerTextStyle2,
              ),
              SizedBox(height: 10.0.h,),
              //Text(text!,style: CustomTextStyle.kContainerTextStyle2,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        AppAsset.loveImage,
                        height: 10.h,
                        width: 11.23.w,
                      ),
                      SizedBox(width: 5.0.w),
                      Text(
                        '$numOfSession Session',
                        style: CustomTextStyle.ksmallTextStyle,
                      ),
                    ],
                  ),

                 Row(
                   children: [

                     Text(
                       'Start',
                       style: CustomTextStyle.ksmallTextStyle,
                     ),
                     SizedBox(width: 10.h,),
                     SvgPicture.asset(
                       AppAsset.forwardArrow,
                     )
                   ],
                 )
                ],
              ),
            ],
          ),
        )



        ]),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final String image;
  double? height;
  final Color? color;

   ContainerWidget({Key? key, required this.image, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
width: double.infinity,
height: height ?? 219.0.h,
decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0.r), color: color ?? ColorUtils.containerColor1
),
child: SvgPicture.asset(image),
);
  }
}

//