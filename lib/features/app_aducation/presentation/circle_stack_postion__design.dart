import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_ui/gen/colors.gen.dart';
import 'package:rating_ui/helpers/ui_helpers.dart';


class CircleStackPostionDesign extends StatefulWidget {
  const CircleStackPostionDesign({super.key});

  @override
  State<CircleStackPostionDesign> createState() => _CircleStackPostionDesignState();
}

class _CircleStackPostionDesignState extends State<CircleStackPostionDesign> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body:
      Column(
        children: [
          UIHelper.verticalSpace(50.h),


          Stack(
            clipBehavior: Clip.none, // Ensures child widgets aren't clipped
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              // Second Container (Blue) - Positioned
              Positioned(
                left: 17,
                top: 0,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              // Third Container (Green) - Positioned
              Positioned(
                left: 34, // Shifted further to the right
                top: 0,  // Shifted down
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              // Number Text Positioned on the Right Side
              Positioned(
                left: 80,
                right: -1, // Moves number slightly outside the Stack
                top: 1,
                child: Text(
                  '3', // Change this number dynamically if needed
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
