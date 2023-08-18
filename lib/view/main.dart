import 'package:attendance_taker/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375,812),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) => child!,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'University Project',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const  SplashScreen(),

      ),
    );
  }
}

