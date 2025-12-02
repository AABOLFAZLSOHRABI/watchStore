import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppLogo(size: LogoSize.large,),
              116.h.height,
              AppTextField(
                label: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: _controller,
                textAlign: TextAlign.center,
              ),
              24.h.height,
              MainButton(text: AppStrings.sendOtpCode, onTaPeressed: () => {},)
            ],
          ),
        ),
      ),
    );
  }
}
