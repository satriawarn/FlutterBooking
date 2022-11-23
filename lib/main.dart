import 'package:booking_aja/presentation/pages/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Booking Aja',
          theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: 'Poppins',
          ),
          home: const OnboardingPage(),
        );
      },
    );
  }
}
