import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextStyle{
  static var kTextStyle1 = GoogleFonts.kanit(
      color: Color(0xffffffff),
      fontWeight: FontWeight.bold,
      fontSize: 25.sp,
      fontStyle: FontStyle.normal);
      
  static var kTextStyle2 = TextStyle(
      color: Color(0xffffffff), fontSize: 16.sp, fontWeight: FontWeight.w500);

  static var kContainerTextStyle = GoogleFonts.plusJakartaSans(
      color: Color(0xff000000), 
      fontSize: 16.sp, 
      fontWeight: FontWeight.w600);

  
  static var kBoldTextStyle = GoogleFonts.plusJakartaSans(
      color: Color(0xff000000), 
      fontSize: 22.sp,
      fontWeight: FontWeight.w700);

  static var kBoldTextStyle2 = GoogleFonts.plusJakartaSans(
      color: Color(0xff000000),
      fontSize: 17.sp,
      fontWeight: FontWeight.w700);

   static var kFaintTextStyle = GoogleFonts.plusJakartaSans(
      color: Color(0xff1E1E1E), fontSize: 17.sp, fontWeight: FontWeight.w400);    
   

static var kContainerTextStyle2 = GoogleFonts.plusJakartaSans(
      color: Color(0xff1E1E1E), 
      fontSize: 13.sp,
      fontWeight: FontWeight.w400);

static var ksmallTextStyle = GoogleFonts.plusJakartaSans(
      color: Color(0xff1E1E1E),
      fontSize: 12.sp, 
      fontWeight: FontWeight.w400
);

} 