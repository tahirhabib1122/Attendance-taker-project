import 'Attendance_screen.dart';
import 'package:attendance_taker/view/Class_screen.dart';
import 'package:attendance_taker/view/Status_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final PageController pageController = PageController(initialPage: 0);
  int pagePosition = 0;
  final TextEditingController className = TextEditingController();
  final TextEditingController departmentName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: Text(
          'Attendace Taker',
          style: GoogleFonts.poppins(
            fontSize:20,

          ),
         ),

        ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          /// Tab bar
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      pageController.jumpToPage(0);
                      pagePosition = 0;
                    });
                  },
                  child: Container(
                    height: 50.sp,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                    ),
                    child: Center(
                      child: Text(
                        ' Class',
                        style: GoogleFonts.poppins(
                          fontSize: pagePosition == 0 ? 18.sp : 15.sp,
                          color:
                              pagePosition == 0 ? Colors.white : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      pageController.jumpToPage(1);
                      pagePosition = 1;
                    });
                  },
                  child: Container(
                    height: 50.sp,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                    ),
                    child: Center(
                      child: Text(
                        'Attendance',
                        style: GoogleFonts.poppins(
                          fontSize: pagePosition == 1 ? 18.sp : 15.sp,
                          color:
                              pagePosition == 1 ? Colors.white : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    setState(() {
                      pageController.jumpToPage(2);
                      pagePosition = 2;
                    });
                  },
                  child: Container(
                    height: 50.sp,
                    decoration: const BoxDecoration(
                      color: Colors.cyan,
                    ),
                    child: Center(
                      child: Text(
                        'Status',
                        style: GoogleFonts.poppins(
                          fontSize: pagePosition == 2 ? 18.sp : 15.sp,
                          color:
                              pagePosition == 2 ? Colors.white : Colors.green,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// body
          SizedBox(
            height: 0.7.sh,
            width: 1.sw,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: pageController,
              children: const [
                ClassScreen(),
                AttendanceScreen(),
                StatusScreen(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: pagePosition == 0
          ? FloatingActionButton(
              onPressed: () => showAddClassDialog(context),
              backgroundColor: Colors.cyan,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20.sp,
              ),
            )
          : const SizedBox(),
    );
  }

  void showAddClassDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            height: 250,
            width: 1.sw,
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.all(15.sp),
              physics: const ClampingScrollPhysics(),
              children: [
                Text(
                  ' Add New Class',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),

                /// Get class name from user
                TextField(
                   controller: className,
                  decoration: const InputDecoration(
                    hintText: 'Enter class'
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),

                /// Get department name from user
                TextField(
                   controller: departmentName,
                  decoration: const InputDecoration(
                    hintText: 'Enter department'
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),

                ///Button
                Row(
                  children: [
                    Expanded(
                      child: Align(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 40.sp,
                            decoration: BoxDecoration(
                              color: Colors.red.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                'Cancel',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: Colors.red,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 10.sp),
                    Expanded(
                      child: Align(
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                            // Perform save operation here
                          },
                          child: Container(
                            height: 40.sp,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.1),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Center(
                              child: Text(
                                'Save',
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
