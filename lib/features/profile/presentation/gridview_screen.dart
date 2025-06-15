import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_ui/gen/colors.gen.dart';
import 'package:rating_ui/helpers/ui_helpers.dart';

class GridviewScreen extends StatefulWidget {
  const GridviewScreen({super.key});

  @override
  State<GridviewScreen> createState() => _GridviewScreenState();
}

class _GridviewScreenState extends State<GridviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            UIHelper.verticalSpace(50),

            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.vertical,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 190.h,
                   // width: 200.w,
                    decoration: BoxDecoration(
                      color: const Color(0XFF567291),
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 120.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            image: const DecorationImage(
                              image: AssetImage('assets/images/sobjigreen.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 29.h),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Text('Hashi', style: TextStyle(color: Colors.black)),
                              Spacer(),
                              Text('khusi', style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 5,
                  crossAxisSpacing: 5,
                  childAspectRatio: 0.95,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
