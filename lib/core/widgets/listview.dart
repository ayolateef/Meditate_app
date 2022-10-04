import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_app/core/constants/app_asset.dart';
import 'package:medi_app/core/constants/text_style.dart';

import '../view_models/list_model.dart';

class DemoListTile extends StatelessWidget {

  List<ListModel> titles = [
    ListModel(
        title: "Sweet Memories",
        subtitle: "December 29 Pre-Launch",
        image: AppAsset.bluePlayContainerIcon),
    ListModel(
        title: "A Day Dream",
        subtitle: "December 29 Pre-Launch",
        image: AppAsset.tealPlayContainerIcon),
    ListModel(
        title: "Mind Explore",
        subtitle: "December 29 Pre-Launch",
        image:AppAsset.orangePlayContainerIcon)
  ];

  DemoListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: titles.length,
        itemBuilder: (context, index){
          return Container(
            height: 50.0.h,
            margin:  EdgeInsets.symmetric(horizontal: 5.0.w, vertical: 10.0.h),
            child: ListTile(

              leading: SvgPicture.asset(titles[index].image!, height: 39.0,),
              title: Text(titles[index].title!, style: CustomTextStyle.kBoldTextStyle2),
              subtitle: Text(titles[index].subtitle!, style:CustomTextStyle.ksmallTextStyle),
              trailing:const Icon(Icons.more_horiz),
            ),
          );
        },
        separatorBuilder:(BuildContext context,int index){
          return  Divider(
            height: 10.0.h,

          );
        }
       );
  }
}
