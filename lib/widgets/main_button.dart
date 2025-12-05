import 'package:flutter/material.dart';
import 'package:watch_store/components/button_style.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/dimes.dart';

class MainButton extends StatelessWidget {
  final String text;
  void Function() onTaPeressed;
  MainButton({super.key, required this.text, required this.onTaPeressed});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimes.buttonHeight,
      width: AppDimes.buttonWidth,
      child: ElevatedButton(
        onPressed: () => onTaPeressed,
        style: AppButtonStyle.mainButtonStyle,
        child: Text(text,style: LightAppTestState.button,),
      ),
    );
  }
}
