import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/dimens.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextInputType inputType;

  AppTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.textAlign = TextAlign.center,
    this.inputType = TextInputType.text,
    this.icon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.meduim),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(label),
          Dimens.meduim.height,
          SizedBox(
            height: 42.h, 
            width: 260.w,
            child: TextField(
              textAlign: textAlign,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(hintText: hint, prefixIcon: icon),
            ),
          ),
        ],
      ),
    );
  }
}
