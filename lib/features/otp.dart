


//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:ktmtommy_app/assets_helper/app_colors.dart';
// import 'package:ktmtommy_app/assets_helper/app_fonts.dart';
// import 'package:ktmtommy_app/assets_helper/app_image.dart';
// import 'package:ktmtommy_app/common_widgets/custom_arrow_back.dart';
// import 'package:ktmtommy_app/common_widgets/custom_login_button.dart';
// import 'package:ktmtommy_app/helpers/ui_helpers.dart';
// import 'package:pin_code_fields/pin_code_fields.dart';
//
// class VerifyOtpScreen extends StatefulWidget {
//   const VerifyOtpScreen({super.key});
//
//   @override
//   State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
// }
//
// class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
//   final TextEditingController _otpController = TextEditingController();
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//
//   bool _isResendLoading = false;
//   int _resendCountdown = 59;
//   bool _isResendButtonEnabled = false;
//
//   @override
//   void initState() {
//     super.initState();
//     _startResendCountdown();
//   }
//
//   @override
//   void dispose() {
//     _otpController.dispose();
//     super.dispose();
//   }
//
//   void _startResendCountdown() {
//     setState(() {
//       _isResendButtonEnabled = false;
//       _resendCountdown = 59;
//     });
//
//     Future.doWhile(() async {
//       await Future.delayed(const Duration(seconds: 1));
//       if (!mounted) return false;
//
//       if (_resendCountdown > 0) {
//         setState(() {
//           _resendCountdown--;
//         });
//         return true; // continue looping
//       } else {
//         setState(() {
//           _isResendButtonEnabled = true;
//         });
//         return false; // stop looping
//       }
//     });
//   }
//
//   String _formatTime(int seconds) {
//     final minutes = (seconds ~/ 60).toString().padLeft(2, '0');
//     final secs = (seconds % 60).toString().padLeft(2, '0');
//     return "$minutes:$secs";
//   }
//
//   Future<void> _resendOtp() async {
//     if (!_isResendButtonEnabled || _isResendLoading) return;
//
//     setState(() {
//       _isResendLoading = true;
//       _otpController.clear();
//       _isResendButtonEnabled = false;
//       _resendCountdown = 59;
//     });
//
//     try {
//       // Simulate API call delay
//       await Future.delayed(const Duration(seconds: 1));
//
//       if (!mounted) return;
//
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text('OTP resent successfully')),
//       );
//
//       // Restart countdown
//       _startResendCountdown();
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Failed to resend OTP: ${e.toString()}')),
//         );
//       }
//     } finally {
//       if (mounted) {
//         setState(() {
//           _isResendLoading = false;
//         });
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => FocusScope.of(context).unfocus(),
//       child: Scaffold(
//         resizeToAvoidBottomInset: true,
//         body: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//             image: DecorationImage(
//               image: AssetImage(AppImages.bacroundimage),
//               fit: BoxFit.cover,
//             ),
//           ),
//           child: SingleChildScrollView(
//             padding: EdgeInsets.symmetric(horizontal: 24.w),
//             child: Form(
//               key: _formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   CustomAppbarWidget(),
//                   UIHelper.verticalSpace(209.h),
//                   Text(
//                     'Verify OTP',
//                     textAlign: TextAlign.center,
//                     style: TextFontStyle.textStyle24w600cFFFFFFpoppins,
//                   ),
//                   UIHelper.verticalSpace(2.h),
//                   Text(
//                     'Enter an OTP sent to mail@mail.com',
//                     style: TextFontStyle.textStyle20w700cEEE6DApoppins.copyWith(
//                       fontWeight: FontWeight.w400,
//                       fontSize: 14.sp,
//                     ),
//                   ),
//                   UIHelper.verticalSpace(24.h),
//
//                   // OTP Field
//                   Center(
//                     child: Padding(
//                       padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 13.h),
//                       child: LayoutBuilder(
//                         builder: (context, constraints) {
//                           double totalWidth = constraints.maxWidth;
//                           double fieldWidth = (totalWidth - 20) / 4;
//                           return PinCodeTextField(
//                             appContext: context,
//                             length: 4,
//                             controller: _otpController,
//                             enablePinAutofill: true,
//                             validator: (value) {
//                               if (value == null || value.trim().isEmpty) {
//                                 return 'Please enter OTP';
//                               } else if (value.trim().length != 4) {
//                                 return 'Please enter complete 4-digit OTP';
//                               }
//                               return null;
//                             },
//                             pinTheme: PinTheme(
//                               shape: PinCodeFieldShape.box,
//                               borderRadius: BorderRadius.circular(8.r),
//                               fieldHeight: 55.h,
//                               fieldWidth: fieldWidth.clamp(50, 77.5),
//                               borderWidth: 2,
//                               activeColor: AppColors.c2F2F2F,
//                               selectedColor: AppColors.cEEE6DA,
//                               inactiveColor: AppColors.c2F2F2F,
//                               activeFillColor: AppColors.c181818,
//                               selectedFillColor: AppColors.c181818,
//                               inactiveFillColor: AppColors.c181818,
//                             ),
//                             cursorColor: Colors.black,
//                             keyboardType: TextInputType.number,
//                             enableActiveFill: true,
//                             textStyle: TextFontStyle.headline18w500cFFFFFF.copyWith(
//                               fontSize: 18.sp,
//                               fontWeight: FontWeight.w500,
//                             ),
//                             onChanged: (value) {},
//                           );
//                         },
//                       ),
//                     ),
//                   ),
//
//                   UIHelper.verticalSpace(30.h),
//                   CustomLoginButton(
//                     text: 'CONTINUE',
//                     onPressed: () {
//                       if (_formKey.currentState!.validate()) {
//                         // TODO: Handle OTP submit
//                       }
//                     },
//                   ),
//                   UIHelper.verticalSpace(14.h),
//
//                   // Countdown + Resend Row
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Text(
//                         _formatTime(_resendCountdown),
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           color: const Color(0xFFD1D1D1),
//                           fontSize: 14,
//                           fontFamily: 'Poppins',
//                           fontWeight: FontWeight.w400,
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: _isResendButtonEnabled && !_isResendLoading
//                             ? _resendOtp
//                             : null,
//                         child: Text(
//                           'Resend OTP',
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: _isResendButtonEnabled
//                                 ? const Color(0xFFEEE6DA)
//                                 : Colors.grey,
//                             fontSize: 14,
//                             fontFamily: 'Poppins',
//                             fontWeight: FontWeight.w400,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

