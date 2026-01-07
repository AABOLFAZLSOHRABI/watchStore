import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/auth/cubit/auth_cubit.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class VerifyCodeScreen extends StatelessWidget {
  VerifyCodeScreen({super.key, required this.mobile});
  final TextEditingController _controller = TextEditingController();
  final String mobile;

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
                  mobile,
                ),
                style: AppTextStyle.title,
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
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is LoggedInState) {
                    // تغییر صفحه به صورت خودکار توسط Redirect در routes.dart انجام می‌شود
                  } else if (state is VerifiedIsNotRegistrationState) {
                    context.push(
                      ScreenNames.registerScreen,
                      extra: _controller.text,
                    );
                  } else if (state is ErrorState) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        duration: const Duration(seconds: 2),
                        backgroundColor: Colors.red,
                        content: Text("error"),
                      ),
                    );
                  }
                },
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const CircularProgressIndicator();
                  }
                  return MainButton(
                    text: AppStrings.next,
                    onTaPeressed: () {
                      BlocProvider.of<AuthCubit>(
                        context,
                      ).verifySMSCode(mobile, _controller.text);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
