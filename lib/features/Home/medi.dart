
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_app/core/constants/app_asset.dart';
import 'package:medi_app/core/constants/text_style.dart';
import 'package:medi_app/core/widgets/buttons.dart';
import 'package:medi_app/features/Home/Music.dart';
import 'package:medi_app/features/Home/Utilis/card_container.dart';

import '../../core/widgets/listview.dart';

class Medi extends StatelessWidget {
  const Medi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(18.0.sp),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  ContainerWidget(
                    image: AppAsset.mediImageContainer
                  ),
                SizedBox(height: 15.0.h,),
                Text('Peter Mach', style: CustomTextStyle.ksmallTextStyle,),
                SizedBox(height: 8.0.h,),
                Text('Mind Deep Relax', style: CustomTextStyle.kBoldTextStyle,),

                SizedBox(height: 8.0.h),

                Text(
                  'Join the Community as we prepare over 33 days\n to relax'
                    'and feel joy with the mind and happiness\n '
                    'session across the World.',textAlign: TextAlign.start,

                  style: CustomTextStyle.ksmallTextStyle,),
                SizedBox(height: 15.0.h,),
                 InkWell(
                   onTap:(){
                     Navigator.of(context).push(
                         MaterialPageRoute(builder: (context) =>  const Music())
                     );
                   },
                     child:const CustomButtons(image:AppAsset.playIcon ,   text:' Play Next Session')),
                SizedBox(height: 15.0.h,),
                Expanded(
                    child: DemoListTile())
              ],
            ),
          ),
        ));
  }
}
