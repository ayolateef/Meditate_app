import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medi_app/core/constants/colors.dart';

class CustomButtons extends StatelessWidget {
  final String text;
  final Color? colour;
  final String? image;
  final Color? color;
  final VoidCallback? onTap;

  const CustomButtons({Key? key, required this.text,  this.colour, this.image, this.color, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            width: double.infinity,
            height: 50.h,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0), color: colour ?? ColorUtils.primaryGreenColor),
            child: Center(child: 
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if(image != null)SvgPicture.asset(image!),
                SizedBox(width:10.w),
                Text(text, style:  GoogleFonts.plusJakartaSans (
                  fontWeight: FontWeight.w500, fontSize: 16.sp, color: color?? ColorUtils.primaryWhiteColor,
                 )
                  ,)
              ],
            ),), 
              
          )
      ),
    );
  }
}
