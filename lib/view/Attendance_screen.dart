import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Attendance_detail_screen.dart';
class AttendanceScreen extends StatefulWidget {
  const AttendanceScreen({Key? key}) : super(key: key);

  @override
  State<AttendanceScreen> createState() => _AttendanceScreenState();
}

class _AttendanceScreenState extends State<AttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const ClampingScrollPhysics(),
      padding: EdgeInsets.all(12.sp),
      itemCount: 5,
      itemBuilder: (context, index){

        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AttendanceDetailScreen(
            ),
            ),
            );
          },
          child: Container(
            height: 70.sp,
            padding: EdgeInsets.symmetric(horizontal: 10.sp),
            margin: EdgeInsets.only(bottom: 10.sp),
            decoration: BoxDecoration(
                color: Colors.cyan.withOpacity(0.4),
                borderRadius: const BorderRadius.all(Radius.circular(12),
                )
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 6,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text.rich(
                      TextSpan(
                          children: [
                            TextSpan(
                              text: 'Flutter',
                              style: GoogleFonts.poppins(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            const TextSpan(text: '\n'),

                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Department of Computer Science',
                                    style: GoogleFonts.poppins(
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ]
                            ),


                          ]
                      ),

                    ),
                  ),
                ),

                ///MORE BUTTON
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Expanded(
                      flex: 1,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            height: 50,
                            width: 45,
                            decoration: const BoxDecoration(
                              color: Colors.cyan,
                              borderRadius: BorderRadius.all(Radius.circular(12),),
                            ),
                            child: Center(
                              child: Text(
                                '1',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w200,
                                  color: Colors.white,

                                ),
                              ),
                            ),
                          )
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}