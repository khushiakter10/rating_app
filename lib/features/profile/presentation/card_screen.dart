import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_ui/gen/colors.gen.dart';
import 'package:rating_ui/helpers/ui_helpers.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({super.key});

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  final List<String> image = [
    'assets/images/cute4.jpeg',
    'assets/images/cute3.jpg',
    'assets/images/cute2.webp',
    'assets/images/cute3.jpg',
    'assets/images/cute4.jpeg',
    'assets/images/cute.png',
    'assets/images/cute.png',
    'assets/images/cute2.webp',
    'assets/images/cute3.jpg',
    'assets/images/cute4.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            GridView.builder(
              padding: EdgeInsets.zero,
              itemCount: image.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 11,
                mainAxisSpacing: 11,
                childAspectRatio: 0.68,
              ),
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 190.h,
                  width: 200.w,
                  child: Card(
                    margin: EdgeInsets.zero,
                    elevation: 3,
                   // color: Color(0XFF903382),
                   // color: const Color(0XFF439922),
                    color: const Color(0XFF9999999),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 150.h,
                          width: 200.w,
                          child: Card(
                            margin: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12.r),
                              child: Image.asset(
                                image[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mst: Khushi Akter',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 13.sp)),
                              Text('Dep: Computer Science',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.sp)),
                              Text('Season: 20-21',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.sp)),
                              Text('Shift: 2nd',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.sp)),

                              Text('Roll: (502028)',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.sp)),

                              Text('Age: 22)',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 12.sp)),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
