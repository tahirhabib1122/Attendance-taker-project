
import 'package:attendance_taker/view/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
     /// next screen ta ba zo
    Future.delayed(const Duration(seconds: 4),(){
      Navigator.push(
        context,
          MaterialPageRoute(
          builder: (context) => const Home(),
      ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,

       body: Center(
         child:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children:  [

             Image.asset(
           'assets/logo.png',
           height: 200,
         ),
             const SizedBox(height: 10),

             Text(
                     'Attendance Taker',
                     style:  GoogleFonts.poppins(
                       fontSize: 25.sp,
                       fontWeight: FontWeight.w500,

                     ),
                   )
                 ],
               ),
             ),
           );

  }
}
