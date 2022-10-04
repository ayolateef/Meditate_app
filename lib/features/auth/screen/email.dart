import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_app/core/constants/text_style.dart';
import 'package:medi_app/core/constants/textfield_decoration.dart';
import 'package:medi_app/core/widgets/buttons.dart';
import 'package:medi_app/features/auth/screen/phone_number_page.dart';

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            elevation:0.0,
            backgroundColor: Colors.white10,
            actions:  [
              Padding(
                padding: EdgeInsets.all(18.0.w),
                child: const Text('Help'),        
      )]
      ),
        body: SingleChildScrollView(
          child: Padding(
            padding:  EdgeInsets.all(20.0.w),
            child: Container(
              padding:
                   EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text('What\'s  your email', style: CustomTextStyle.kBoldTextStyle),
                   SizedBox(
                    height: 20.0.h,
                  ),

                  TextField(decoration: CustomTextFieldDecoration.kTextFieldInputDecoration ),
                  SizedBox(
                    height: 200.0.h,
                  ),


                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => const PhoneNumberPage()));
                      },
                      child: 
                      const CustomButtons(
                        text: 'Continue',
                      )
                          
                          ),
                   SizedBox(
                    height: 15.0.h,
                  ),
                   Center(
                      child: Text(
                    'Use Phone Number Instead',

                  ),
                  )
                ],
              ),
            ),
          ),
        ),
   
      ),
    );
  }
}
