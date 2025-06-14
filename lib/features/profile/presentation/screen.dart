import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_ui/gen/colors.gen.dart';
import 'package:rating_ui/helpers/ui_helpers.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            UIHelper.verticalSpace(50),

            Container(
              height:200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                border: Border.all(color: Colors.red)
              ),child: Column(
              crossAxisAlignment: CrossAxisAlignment.start
              ,
              children: [
                Container(
                  height:150,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.r),
                    image: DecorationImage(image: AssetImage('assets/images/sobjigreen.png'),fit: BoxFit.cover),

                  ),
                ),
                UIHelper.verticalSpace(11.h),
                Row(
                  children: [
                    Text('khusi',style: TextStyle(color: Colors.red)),

                  ],
                )
              ],
            ),
            )
          ],
        ),
      ),
    );
  }
}
