import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimens.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final String hint;
  final TextEditingController controller;
  final Widget prefixIcon;
  final TextAlign textAlign;
  final TextInputType inputType;

  const AppTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.controller,
    this.textAlign = TextAlign.center,
    this.inputType = TextInputType.text,
    this.prefixIcon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(Dimens.smallH),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(label),
          Dimens.mediumH.height,
          SizedBox(
            height: Dimens.textFieldHeight,
            width: Dimens.textFieldWidth,
            child: TextField(
              textAlign: textAlign,
                textAlignVertical: TextAlignVertical.center,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                hintText: hint,
                prefixIcon: prefixIcon,
                hintStyle: TextStyle(color: AppColors.hint,fontSize: Dimens.textFontHint),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
