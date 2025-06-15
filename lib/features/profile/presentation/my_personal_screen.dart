import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_ui/gen/colors.gen.dart';
import 'package:rating_ui/helpers/ui_helpers.dart';

class MyPersonalScreen extends StatefulWidget {
  const MyPersonalScreen({super.key});

  @override
  State<MyPersonalScreen> createState() => _MyPersonalScreenState();
}

class _MyPersonalScreenState extends State<MyPersonalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Column(
          children: [
            UIHelper.verticalSpace(50),
            Expanded(
              child: GridView.builder(
                itemCount: 20,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 7,
                  mainAxisSpacing: 7,
                  childAspectRatio: 0.95
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 185.h,
                    width: 220.w,
                    decoration: BoxDecoration(
                      color: const Color(0XFF502029),
                      borderRadius: BorderRadius.circular(9.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 115.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.r),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/images/foodvillage.jpeg'),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0.sp),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Mst: Khusbu Rahman',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14.sp)),
                              UIHelper.verticalSpace(3.h),
                              Text('Food Village',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.sp)),
                              UIHelper.verticalSpace(3.h),
                              Text('Price: 350 Tk',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.sp))
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
