import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:rating_ui/gen/colors.gen.dart';
import 'package:rating_ui/helpers/ui_helpers.dart';

class ListviewScreen extends StatefulWidget {
  const ListviewScreen({super.key});

  @override
  State<ListviewScreen> createState() => _ListviewScreenState();
}

class _ListviewScreenState extends State<ListviewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: ListView.separated(
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.zero,
                itemCount: 100,
                separatorBuilder: (BuildContext context, int index) {
                  return UIHelper.verticalSpace(5.h);
                },
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                      padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 20.w),
                      decoration: BoxDecoration(
                          color: AppColors.cFFFFFF,
                          borderRadius: BorderRadius.circular(9.r),
                          border: Border.all(color: Colors.grey)
                      ),
                      child: const Row(
                        children: [
                          Text('khusi',style: TextStyle(color: Colors.black)),
                          Spacer(),
                          Text('Ahona',style: TextStyle(color: Colors.black)),
                        ],
                      )
                  );
                },
              ),
            )

          ],
        ),
      ),
    );
  }
}



