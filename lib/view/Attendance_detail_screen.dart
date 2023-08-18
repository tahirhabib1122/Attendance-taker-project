import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AttendanceDetailScreen extends StatefulWidget {
  const AttendanceDetailScreen({super.key});

  @override
  State<AttendanceDetailScreen> createState() => _AttendanceDetailScreenState();
}

class _AttendanceDetailScreenState extends State<AttendanceDetailScreen> {
  final DateTime today = DateTime.now();
bool selectAllStudent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight:70.60,
        backgroundColor: Colors.cyan,
        title: Text(
          'Flutter\n'
          '${today.day}-${today.month}-${today.year}-${today.hour}-${today.minute}:${today.second}',
          style: GoogleFonts.poppins(
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets.all(12.sp),
        children: [
          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    ' Attendees',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ' 0/4',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

            ],
          ),

          Row(
            children: [
              Expanded(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Select All Student',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              Expanded(
                child: Align(
                  alignment: Alignment.centerRight,
                  child:  Checkbox(
                    onChanged: (val) {
                      setState(()=>selectAllStudent=  val! );


                    },
                    value: selectAllStudent,
                    activeColor: Colors.cyan,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.sp),
          ListView.builder(
            itemCount: 3,
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets. zero,
            itemBuilder: (BuildContext context, int index) => Container(
              height: 50.sp,
              padding: EdgeInsets.zero,
              margin: EdgeInsets.only(bottom: 10.sp),
              decoration: BoxDecoration(
                color: Colors.cyan.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  // Attendance
                  Expanded(
                    flex: 1,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 50.sp,
                        width: 40.sp,
                        decoration: const BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(12),
                            bottomLeft: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '1',
                            style: GoogleFonts.poppins(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ///student name//
                  SizedBox(width: 10.sp),
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Muhammad Tahir Habib',
                        style: GoogleFonts.poppins(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  //more option button
                  Expanded(
                    child: Align(
                      alignment: Alignment.centerRight,
                      child:  Checkbox(
                        onChanged: (val) {
                          setState(()=>selectAllStudent=  val! );

                        },
                        value: selectAllStudent,
                        activeColor: Colors.cyan,
                      ),
                  ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.cyan,
        child: const Icon(Icons.save,color: Colors.white),
      ),
    );
  }
}
