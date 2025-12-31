import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimes.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final Widget prefixIcon;
  final TextAlign textAlign;
  final TextInputType inputType;
  final String prefixText;

  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.textAlign = TextAlign.center,
    this.inputType = TextInputType.text,
    this.prefixIcon = const SizedBox(),
    this.prefixText = '',
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimes.smallH.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: AppDimes.textFieldWidth.w,
            child: Row(
              children: [
                Flexible(
                  child: Text(
                    prefixText,
                    style: AppTextStyle.title,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: AppDimes.smallH.w),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      label,
                      style: AppTextStyle.title,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppDimes.mediumH.h.height,
          SizedBox(
            height: AppDimes.textFieldHeight.h,
            width: AppDimes.textFieldWidth.w,
            child: TextField(
              textAlign: textAlign,
              textAlignVertical: TextAlignVertical.center,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                prefixIcon: prefixIcon,
                hintStyle: AppTextStyle.hint,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
