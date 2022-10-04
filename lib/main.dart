import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medi_app/features/auth/screen/welcome_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (BuildContext context, Widget? child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.light,
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            colorScheme:
                ColorScheme.fromSwatch(primarySwatch: Colors.teal).copyWith(
              secondary: Colors.black,
            ),
          ),
          home: const WelcomeScreen(),
        );
      },
    );
  }
}
