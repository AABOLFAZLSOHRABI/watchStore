import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
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
              AppLogo(size: LogoSize.large),
              47.h.height,
              Text(
                AppStrings.otpCodeSendFor.replaceAll(
                  AppStrings.replace,
                  "0912566",
                ),
              ),
              
              14.h.height,
              Text(
                AppStrings.wrongNumberEditNumber,
                style: TextStyle(color: AppColors.primaryColor),
              ),
              63.h.height,
              AppTextField(
                label: AppStrings.enterVerificationCode,
                hint: AppStrings.hintVerificationCode,
                controller: _controller,
                textAlign: TextAlign.center,
                prefixText: "2:56",
              ),
              24.h.height,
              MainButton(text: AppStrings.next, onTaPeressed: () => {}),
            ],
          ),
        ),
      ),
    );
  }
}
