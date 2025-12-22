import 'package:flutter/material.dart';
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
      padding: EdgeInsets.all(AppDimes.smallH),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: AppDimes.textFieldWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(prefixText, style: AppTextStyle.title),
                Text(label, style: AppTextStyle.title),
              ],
            ),
          ),
          AppDimes.mediumH.height,
          SizedBox(
            height: AppDimes.textFieldHeight,
            width: AppDimes.textFieldWidth,
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
