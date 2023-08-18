import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Status_screen.dart';

class StatusDetailScreen extends StatefulWidget {
  const StatusDetailScreen({super.key});

  @override
  State<StatusDetailScreen> createState() => _StatusDetailScreen();
}

class _StatusDetailScreen extends State<StatusDetailScreen> {
  final DateTime today = DateTime.now();
  bool selectAllStudent = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ///Navigate to the status Screen
          IconButton(

              icon: const Icon(Icons.search), onPressed: () {  },)
        ],
        backgroundColor: Colors.cyan,
        title: Text(
          'Flutter',
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
                    ' Class Rate',
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
                    ' 85%',
                    style: GoogleFonts.poppins(
                      fontSize: 16.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

            ],
          ),

          const Row(
            children: [
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
              padding: EdgeInsets.only(left: 10.sp),
              margin: EdgeInsets.only(bottom: 10.sp),
              decoration: BoxDecoration(
                color: Colors.cyan.withOpacity(0.3),
                borderRadius: const BorderRadius.all(
                  Radius.circular(12),
                ),
              ),
              child: Row(
                children: [
                  ///student name//
                  SizedBox(width: 10.sp),
                  Expanded(
                    flex: 6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Muhammad Tahir Habib',
                        style: GoogleFonts.poppins(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  ///status class///
                  Expanded(
                    flex: 3,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Container(
                        height: 50.sp,
                        width: 50.sp,
                        decoration: const BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(12),
                            bottomRight: Radius.circular(12),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            '100% \n'
                            '2/2',
                            textAlign:TextAlign.center,
                            style: GoogleFonts.poppins(
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
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
