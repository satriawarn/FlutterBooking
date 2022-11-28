import 'package:booking_aja/presentation/pages/dashboard/favorite/favorite_view.dart';
import 'package:booking_aja/presentation/pages/dashboard/trips/detail/detail_view.dart';
import 'package:booking_aja/presentation/pages/onboarding/onboarding_view.dart';
import 'package:booking_aja/presentation/pages/welcome/finish/finish_view.dart';
import 'package:booking_aja/presentation/pages/welcome/login/login_view.dart';
import 'package:booking_aja/presentation/pages/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:logging/logging.dart';

import 'presentation/pages/dashboard/dashboard_view.dart';

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((event) {
    debugPrint(event.message);
  });
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
          home: const DashboardPage(),
        );
      },
    );
  }
}
