// // //
// // // import 'package:flutter/material.dart';
// // // import 'package:fl_chart/fl_chart.dart';
// // // import 'package:flutter_screenutil/flutter_screenutil.dart';
// // // import 'package:ktmtommy_app/assets_helper/app_colors.dart';
// // // import 'package:ktmtommy_app/helpers/ui_helpers.dart';
// // //
// // // class LineChartScreen extends StatelessWidget {
// // //   const LineChartScreen({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       backgroundColor: Colors.black,
// // //       body: Center(
// // //         child: Column(
// // //           children: [
// // //
// // //             UIHelper.verticalSpace(300),
// // //
// // //           Row(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: [
// // //               Container(
// // //
// // //                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// // //                 decoration: ShapeDecoration(
// // //                   color: const Color(0xFF202020),
// // //                   shape: RoundedRectangleBorder(
// // //                     side: BorderSide(
// // //                       width: 2,
// // //                       color: const Color(0xFFF55216) /* primary-color-2 */,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(20),
// // //                   ),
// // //                 ),
// // //                 child: Text(
// // //                   'Workout Volume',
// // //                   textAlign: TextAlign.center,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontSize: 14,
// // //                     fontFamily: 'Poppins',
// // //                     fontWeight: FontWeight.w400,
// // //                     height: 1.50,
// // //                   ),
// // //                 ),
// // //               ),
// // //               UIHelper.horizontalSpace(8.w),
// // //               Container(
// // //
// // //                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// // //                 decoration: ShapeDecoration(
// // //                   color: const Color(0xFF202020),
// // //                   shape: RoundedRectangleBorder(
// // //                     side: BorderSide(
// // //                       width: 2,
// // //                       color: const Color(0xFFF55216) /* primary-color-2 */,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(20),
// // //                   ),
// // //                 ),
// // //                 child: Text(
// // //                   'VO2 Max ',
// // //                   textAlign: TextAlign.center,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontSize: 14,
// // //                     fontFamily: 'Poppins',
// // //                     fontWeight: FontWeight.w400,
// // //                     height: 1.50,
// // //                   ),
// // //                 ),
// // //               ),
// // //               UIHelper.horizontalSpace(8.w),
// // //               Container(
// // //
// // //                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
// // //                 decoration: ShapeDecoration(
// // //                   color: const Color(0xFF202020),
// // //                   shape: RoundedRectangleBorder(
// // //                     side: BorderSide(
// // //                       width: 2,
// // //                       color: const Color(0xFFF55216) /* primary-color-2 */,
// // //                     ),
// // //                     borderRadius: BorderRadius.circular(20),
// // //                   ),
// // //                 ),
// // //                 child: Text(
// // //                   'Heart Rate',
// // //                   textAlign: TextAlign.center,
// // //                   style: TextStyle(
// // //                     color: Colors.white,
// // //                     fontSize: 14,
// // //                     fontFamily: 'Poppins',
// // //                     fontWeight: FontWeight.w400,
// // //                     height: 1.50,
// // //                   ),
// // //                 ),
// // //               ),
// // //             ],
// // //           ),
// // //
// // //
// // //
// // //             Container(
// // //               height: 250,
// // //               width: 350,
// // //               decoration: BoxDecoration(
// // //                 color: AppColors.c181818,
// // //                 borderRadius: BorderRadius.circular(12.r),
// // //               ),
// // //               padding:  EdgeInsets.all(19.sp),
// // //               child: LineChart(
// // //                 LineChartData(
// // //                   gridData: FlGridData(
// // //                     show: true,
// // //                     drawVerticalLine: true,
// // //                     horizontalInterval: 22,
// // //                     verticalInterval: 1,
// // //                     getDrawingHorizontalLine: (value) {
// // //                       return FlLine(
// // //                         color: Colors.white.withOpacity(0.2),
// // //                         strokeWidth: 1,
// // //                         dashArray: [4, 4],
// // //                       );
// // //                     },
// // //                     getDrawingVerticalLine: (value) {
// // //                       return FlLine(
// // //                         color: Colors.white.withOpacity(0.2),
// // //                         strokeWidth: 1,
// // //                         dashArray: [4, 4],
// // //                       );
// // //                     },
// // //                   ),
// // //                   extraLinesData: ExtraLinesData(
// // //                     horizontalLines: [
// // //                       HorizontalLine(
// // //                         y: 100,
// // //                         color: Colors.white.withOpacity(0.2),
// // //                         strokeWidth: 1,
// // //                         dashArray: [4, 4], // dotted
// // //                       ),
// // //                     ],
// // //                   ),
// // //                   titlesData: FlTitlesData(
// // //                     leftTitles: AxisTitles(
// // //                       sideTitles: SideTitles(
// // //                         showTitles: true,
// // //                         reservedSize: 30,
// // //                         interval: 25,
// // //                         getTitlesWidget: (value, meta) {
// // //                           return Text(
// // //                             value.toInt().toString(),
// // //                             style:  TextStyle(color: AppColors.cFFFFFF, fontSize: 12.sp),
// // //                           );
// // //                         },
// // //                       ),
// // //                     ),
// // //                     rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
// // //                     topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
// // //                     bottomTitles: AxisTitles(
// // //                       sideTitles: SideTitles(
// // //                         showTitles: true,
// // //                         interval: 1,
// // //                         getTitlesWidget: (value, meta) {
// // //                           const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
// // //                           return Text(
// // //                             days[value.toInt()],
// // //                             style:  TextStyle(color: AppColors.cFFFFFF, fontSize: 12.sp),
// // //                           );
// // //                         },
// // //                       ),
// // //                     ),
// // //                   ),
// // //                   borderData: FlBorderData(
// // //                     show: true,
// // //                     border: Border.all(color: AppColors.c666666.withOpacity(0.2)),
// // //                   ),
// // //                   minX: 0,
// // //                   maxX: 6,
// // //                   minY: 0,
// // //                   maxY: 100,
// // //                   lineBarsData: [
// // //                     LineChartBarData(
// // //                       spots: const [
// // //                         FlSpot(0, 50),
// // //                         FlSpot(1, 60),
// // //                         FlSpot(2, 30),
// // //                         FlSpot(3, 75),
// // //                         FlSpot(4, 0),
// // //                         FlSpot(5, 90),
// // //                         FlSpot(6, 50),
// // //                       ],
// // //                       isCurved: true,
// // //                       color: AppColors.orangeColor,
// // //                       barWidth: 3,
// // //                       isStrokeCapRound: true,
// // //                       dotData: const FlDotData(show: false),
// // //                       belowBarData: BarAreaData(
// // //                         show: true,
// // //                         gradient: LinearGradient(
// // //                           begin: Alignment.bottomCenter,
// // //                           end: Alignment.topCenter,
// // //                           colors: [
// // //                             AppColors.orangeColor.withOpacity(0.4),
// // //                             Colors.transparent,
// // //                           ],
// // //                         ),
// // //                       ),
// // //                     ),
// // //                   ],
// // //                 ),
// // //               ),
// // //             ),
// // //
// // //           ],
// // //         )
// // //
// // //
// // //
// // //
// // //
// // //       ),
// // //     );
// // //   }
// // // }
// // //
//
//
//
//
//
//
//
//
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ktmtommy_app/assets_helper/app_colors.dart';
// import 'package:ktmtommy_app/helpers/ui_helpers.dart';
//
// class LineChartScreen extends StatefulWidget {
//   const LineChartScreen({super.key});
//
//   @override
//   State<LineChartScreen> createState() => _LineChartScreenState();
// }
//
// class _LineChartScreenState extends State<LineChartScreen> {
//   // Selected button: Workout Volume by default
//   String selectedButton = 'Workout Volume';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Column(
//           children: [
//             UIHelper.verticalSpace(100),
//
//
//
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 buildButton('Workout Volume'),
//                 UIHelper.horizontalSpace(8.w),
//                 buildButton('VO2 Max'),
//                 UIHelper.horizontalSpace(8.w),
//                 buildButton('Heart Rate'),
//               ],
//             ),
//
//             UIHelper.verticalSpace(20),
//             Container(
//               height: 250,
//               width: 350,
//               decoration: BoxDecoration(
//                 color: AppColors.c181818,
//                 borderRadius: BorderRadius.circular(12.r),
//               ),
//               padding: EdgeInsets.all(19.sp),
//               child: LineChart(
//                 getWorkoutVolumeChart(),
//               ),
//             ),
//
//
//
//
//           ],
//         ),
//       ),
//     );
//   }
//
//
//
//
//   // Button builder
//   Widget buildButton(String title) {
//     final isSelected = selectedButton == title;
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedButton = title; // just change selection border
//         });
//       },
//       child: Container(
//         padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//         decoration: ShapeDecoration(
//           color: const Color(0xFF202020),
//           shape: RoundedRectangleBorder(
//             side: BorderSide(
//               width: 2,
//               color: isSelected ? const Color(0xFFF55216) : Colors.transparent,
//             ),
//             borderRadius: BorderRadius.circular(20),
//           ),
//         ),
//         child: Text(
//           title,
//           textAlign: TextAlign.center,
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 14,
//             fontFamily: 'Poppins',
//             fontWeight: FontWeight.w400,
//             height: 1.50,
//           ),
//         ),
//       ),
//     );
//   }
//
//   // Workout Volume chart (always same for all buttons)
//   LineChartData getWorkoutVolumeChart() {
//     const spots = [
//       FlSpot(0, 50),
//       FlSpot(1, 60),
//       FlSpot(2, 30),
//       FlSpot(3, 75),
//       FlSpot(4, 0),
//       FlSpot(5, 90),
//       FlSpot(6, 50),
//     ];
//
//     return LineChartData(
//       gridData: FlGridData(
//         show: true,
//         drawVerticalLine: true,
//         horizontalInterval: 20,
//         verticalInterval: 1,
//         getDrawingHorizontalLine: (value) => FlLine(
//           color: Colors.white.withOpacity(0.2),
//           strokeWidth: 1,
//           dashArray: [4, 4],
//         ),
//         getDrawingVerticalLine: (value) => FlLine(
//           color: Colors.white.withOpacity(0.2),
//           strokeWidth: 1,
//           dashArray: [4, 4],
//         ),
//       ),
//       titlesData: FlTitlesData(
//         leftTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             reservedSize: 30,
//             interval: 20,
//             getTitlesWidget: (value, meta) => Text(
//               value.toInt().toString(),
//               style: TextStyle(color: AppColors.cFFFFFF, fontSize: 12.sp),
//             ),
//           ),
//         ),
//         rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//         topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
//         bottomTitles: AxisTitles(
//           sideTitles: SideTitles(
//             showTitles: true,
//             interval: 1,
//             getTitlesWidget: (value, meta) {
//               const days = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
//               return Text(
//                 days[value.toInt()],
//                 style: TextStyle(color: AppColors.cFFFFFF, fontSize: 12.sp),
//               );
//             },
//           ),
//         ),
//       ),
//       borderData: FlBorderData(
//         show: true,
//         border: Border.all(color: AppColors.c666666.withOpacity(0.2)),
//       ),
//       minX: 0,
//       maxX: 6,
//       minY: 0,
//       maxY: 100,
//       lineBarsData: [
//         LineChartBarData(
//           spots: spots,
//           isCurved: true,
//           color: AppColors.orangeColor,
//           barWidth: 3,
//           isStrokeCapRound: true,
//           dotData: const FlDotData(show: false),
//           belowBarData: BarAreaData(
//             show: true,
//             gradient: LinearGradient(
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//               colors: [
//                 AppColors.orangeColor.withOpacity(0.4),
//                 Colors.transparent,
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
//
//
//
