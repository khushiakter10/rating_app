import 'package:flutter/material.dart';

class Containerdrowpdwon extends StatefulWidget {
  const Containerdrowpdwon({super.key});

  @override
  State<Containerdrowpdwon> createState() => _ContainerdrowpdwonState();
}

class _ContainerdrowpdwonState extends State<Containerdrowpdwon> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController notesController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  File? pickedImageFile; // Store the picked image here

  List<String> durationList = ['1', '2', '3', '4'];
  String selectedUnit = 'Select equipment type';

  @override
  void dispose() {
    nameController.dispose();
    notesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          FormField<String>(
            initialValue: selectedUnit,
            validator: (value) {
              if (value == null || value == 'Select equipment type') {
                return "Please select equipment type";
              }
              return null;
            },
            builder: (FormFieldState<String> state) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 9.h),
                    decoration: ShapeDecoration(
                      color: AppColors.c2A2A2A,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.r),
                      ),
                    ),
                    child: PopupMenuButton<String>(
                      color: const Color(0xFF2A2A2A),
                      onSelected: (String value) {
                        setState(() {
                          selectedUnit = value;
                          state.didChange(value);
                        });
                      },
                      itemBuilder: (BuildContext context) {
                        return durationList.map<PopupMenuEntry<String>>((String value) {
                          return PopupMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextFontStyle.textStyle24w600cFFFFFFpoppins
                                  .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w500),
                            ),
                          );
                        }).toList();
                      },
                      offset: const Offset(30, 40),
                      elevation: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedUnit,
                            maxLines: 1,
                            style:TextFontStyle.textStyle14w400cA3A3A3poppins,
                          ),
                          SvgPicture.asset(
                            AppIcons.bottomdrodwonicon,
                            height: 18.h,
                            color: AppColors.c87B842,
                          ),
                        ],
                      ),
                    ),
                  ),
                  if (state.hasError)
                    Padding(
                      padding: EdgeInsets.only(top: 4.h, left: 4.w),
                      child: Text(
                        state.errorText!,
                        style: TextStyle(color: Colors.red, fontSize: 12.sp),
                      ),
                    ),
                ],
              );
            },
          ),

        ],
      ),
    );
  }
}
