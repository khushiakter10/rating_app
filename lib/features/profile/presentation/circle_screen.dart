import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HardDesignScreen extends StatelessWidget {
  const HardDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      body: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
          padding: EdgeInsets.all(20.sp),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(25.r),

            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 15,
                offset: const Offset(0, 10),
              )
            ],

          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topRight,
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundImage: const AssetImage('assets/images/cute3.jpg'),
                  ),

                  Container(
                    padding: EdgeInsets.all(5.sp),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(Icons.check, color: Colors.white, size: 16),
                  ),
                ],
              ),
              SizedBox(height: 15.h),
              Text("Mst: Khushi Islam",style: TextStyle(color: Colors.white,fontSize: 20.sp,fontWeight: FontWeight.bold)),

              SizedBox(height: 5.h),
              Text("Computer Science - 20-21",style: TextStyle(color: Colors.white70,fontSize: 14.sp)),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildStat("Shift", "2nd"),
                  _buildStat("Roll", "502028"),
                  _buildStat("Batch", "20-21"),
                ],
              ),
              SizedBox(height: 20.h),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 15.h),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  backgroundColor: Colors.white),
                child: Text("Follow",style: TextStyle(color:  const Color(0xFF2575FC),fontSize: 16.sp)),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStat(String label, String value) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5.h),
        Text(
          label,
          style: TextStyle(
            color: Colors.white70,
            fontSize: 13.sp,
          ),
        ),
      ],
    );
  }
}
