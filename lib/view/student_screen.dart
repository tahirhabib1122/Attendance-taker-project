import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Studentscreen extends StatefulWidget {
  const Studentscreen({super.key, required this.className});

  final String className;

  @override
  State<Studentscreen> createState() => _StudentscreenState();
}

class _StudentscreenState extends State<Studentscreen> {
  final TextEditingController className = TextEditingController();
  final TextEditingController departmentName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        automaticallyImplyLeading: true,
        title: Text(widget.className),
      ),
      body: ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        padding: EdgeInsets. all(12.sp),
        children: [
          Text(
            ' Total student in Class',
            style: GoogleFonts.poppins(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20.sp),

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
                    alignment: Alignment.topLeft,
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
        ),
      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showBottomSheet(context),
        backgroundColor: Colors.cyan,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 20.sp,
        ),
      ),
    );
  }

  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
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
                  ' Add students',
                  style: GoogleFonts.poppins(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 20.sp,
                ),

                /// Get class name from user
                TextField(
                  controller: className,
                  decoration: const InputDecoration(hintText: 'add student '),
                ),
                SizedBox(
                  height: 50.sp,
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
