import 'package:flutter/material.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/dimens.dart';

class AppTextField extends StatelessWidget {
  final String lable;
  final String hite;
  TextEditingController controller;
  final Widget icon;
  final TextAlign textAlign;
  final TextInputType inputType;

  AppTextField({
    super.key,
    required this.lable,
    required this.hite,
    required this.controller,
    this.textAlign = TextAlign.center,
    this.inputType = TextInputType.text,
    this.icon = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(Dimens.meduim),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(lable),
          Dimens.meduim.height,
          SizedBox(
            height: size.height * .07,
            width: size.width * .75,
            child: TextField(
              textAlign: textAlign,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(hintText: hite, prefixIcon: icon),
            ),
          ),
        ],
      ),
    );
  }
}
