import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';

class CardWidget extends StatelessWidget {
  final String? image;
  final String text;
  // double? outerHeight;
  // double? innerHeight;
  // double? smallerWidth;
  final Color? color;
  final Widget cardChild;
  final Widget? row;
  double? smallSize;



  CardWidget({super.key,
  this.row,
  this.image,
  required this.text,
  this.color, required this.cardChild,
  //this.outerHeight, this.innerHeight, this.smallerWidth
  this.smallSize
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0.sp),
      child: Container(
      // height: outerHeight ?? 300.0.h,
        child: Card(
          //margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10.0),
          shadowColor: Colors.grey,
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0.h)),
          child: Padding(
            padding: EdgeInsets.all(10.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Container(
                width: double.infinity,
                height:  180.0.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0.r), color: color ?? ColorUtils.containerColor1
                ),
                child: SvgPicture.asset(image!),
              ),
              SizedBox(height: 10.0.h,),
              Text(text, style:  CustomTextStyle.kBoldTextStyle.copyWith(fontSize: smallSize),),
                  SizedBox(height: 10.0.h,),
              cardChild,
                  SizedBox(height: 10.0.h,),
              //Text(text!,style: CustomTextStyle.kContainerTextStyle2,),
              row!
             // Row(children: [
             //    SvgPicture.asset(image!),
             //    Text(text!, style: CustomTextStyle.ksmallTextStyle,),
             //    Text(text!, style: CustomTextStyle.ksmallTextStyle,),
             //    SvgPicture.asset(image!)
             //  ],)
            ]),
          ),
        ),
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