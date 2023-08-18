import 'package:attendance_taker/view/student_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassScreen extends StatefulWidget {
  const ClassScreen({super.key});

  @override
  State<ClassScreen> createState() => _ClassScreenState();
}

class _ClassScreenState extends State<ClassScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      width: 1.sw,
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(12.sp),
        physics: const ClampingScrollPhysics(),
        children: [
          Text(
            ' All Classes',
            style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 20.sp,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const ClampingScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 3,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                      const Studentscreen(
                        className: 'Semester 2',
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
                    borderRadius: const BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text.rich(
                            TextSpan(children: [
                              TextSpan(
                                text: 'Semester 1',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const TextSpan(text: ' \n'),
                              TextSpan(
                                text: 'Cs Department',
                                style: GoogleFonts.poppins(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ]),
                                ),
                        ),
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: IconButton(
                            onPressed: () {
                              _showDialog(context);
                            },
                            icon: const Icon(Icons.more_vert_rounded),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );

  }
  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Delete and Edit Here',
              ),
            ),
            actions:[
              TextButton(onPressed:(){},
                child:const Text(
                  'Edit',

                ),
              ),
              const SizedBox(width: 120),
              TextButton(onPressed:(){},
                child:Text(
                  'Delete',
                  style: GoogleFonts.poppins(
                    color: Colors.orangeAccent,
                  ),

                ),
              ),
            ]
        );
      },
    );
  }
}
