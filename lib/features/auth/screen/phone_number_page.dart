import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/widgets/container.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_app/features/auth/screen/meditate.dart';

import '../../../core/constants/text_style.dart';
import '../../../core/constants/textfield_decoration.dart';
import '../../../core/widgets/buttons.dart';

class PhoneNumberPage extends StatefulWidget {
  const PhoneNumberPage({super.key});

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
  String countryValue = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(elevation: 1.0, backgroundColor: Colors.white10, actions: [
          Padding(
            padding: EdgeInsets.all(18.0.w),
            child: const Text('Help'),
          )
        ]),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0.w),
            child: Container(
              padding:
                  EdgeInsets.symmetric(vertical: 10.0.h, horizontal: 10.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('What\'s  your Phone Number',
                      style: CustomTextStyle.kBoldTextStyle),
                  SizedBox(
                    height: 20.0.h,
                  ),
                  Row(
                    
                    children: [
                      Container(
                      height: 53.0.h,
                      width: 70.0.w,
                      decoration: BoxDecoration(
                          color: const Color(0xffEEEEEE),
                          borderRadius: BorderRadius.circular(50.0)),
                      child:CountryCodePicker(
                        initialSelection: 'US',
                        favorite: const ['+1', 'US'],
                        showCountryOnly: true,
                        showOnlyCountryWhenClosed: false,
                        hideMainText: false,
                        padding: EdgeInsets.all(1.0.w),
                      ),
                      ),
                      SizedBox(width: 10.w,),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.number,
                            decoration: CustomTextFieldDecoration
                                .kTextFieldInputDecoration2),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 200.0.h,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>  Meditate()));
                      },
                      child: const CustomButtons(
                        text: 'Continue',
                      )),
                  SizedBox(
                    height: 15.0.h,
                  ),
                  const Center(
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
