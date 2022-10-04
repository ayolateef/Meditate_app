import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFieldDecoration{

static var kTextFieldInputDecoration = InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none),
      filled: true,
      labelText:"Email" ,
      hintStyle: const TextStyle(color: Colors.grey),
      hintText: "Enter your Email",
      hintTextDirection: TextDirection.ltr,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 13.0, horizontal: 13.0));
static var kTextFieldInputDecoration2 = InputDecoration(
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: BorderSide.none),
      filled: true,
      labelText:"(201) 555-0123" ,
      hintStyle: const TextStyle(color: Colors.grey),
      hintText: "(201) 555-0123",
      hintTextDirection: TextDirection.ltr,
      contentPadding:EdgeInsets.symmetric(vertical: 13.0.h,horizontal: 13.0.w),
         
          );

}