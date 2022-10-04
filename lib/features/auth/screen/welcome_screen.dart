import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medi_app/core/constants/app_asset.dart';
import 'package:medi_app/core/constants/colors.dart';
import 'package:medi_app/core/constants/text_style.dart';
import 'package:medi_app/features/auth/screen/email.dart';

import '../../../core/widgets/buttons.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorUtils.primaryGreenColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   SizedBox(
                    height: 20.0.h,
                  ),
                  Text(
                    'medinow',
                    style: CustomTextStyle.kTextStyle1,
                  ),
                   SizedBox(
                    height: 15.0.h,
                  ),
                  Text('Meditate With Us!', style: CustomTextStyle.kTextStyle2),
                   SizedBox(
                    height: 20.0.h,
                  ),
                  const CustomButtons(
                      text: 'Sign with Apple', 
                      colour: ColorUtils.primaryWhiteColor,
                      color: ColorUtils.primaryBlackColor,
                      ),
                   SizedBox(
                    height: 10.0.h,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => EmailScreen()));
                      },
                      child: const CustomButtons(
                          text: 'Continue with Email or Phone',
                          color: ColorUtils.primaryBlackColor,
                          colour: ColorUtils.primaryLightGreenColor)),
                   SizedBox(
                    height: 10.0.h,
                  ),
                  const Text('Continue With Google',
                      style: TextStyle(color: ColorUtils.primaryWhiteColor)),
        
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 50.0.h,
                  ),
                  SvgPicture.asset(AppAsset.welcomeScreenImage)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
