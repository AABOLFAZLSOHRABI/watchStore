import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/screens/auth/cubit/auth_cubit.dart';
import 'package:watch_store/widgets/app_logo.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/main_button.dart';

class SendSmsScreen extends StatelessWidget {
  SendSmsScreen({super.key});
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
              116.h.height,
              AppTextField(
                label: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: _controller,
                textAlign: TextAlign.center,
              ),
              24.h.height,
              BlocConsumer<AuthCubit, AuthState>(
                listener: (context, state) {
                  if (state is SMSSentState) {
                    context.push(
                      ScreenNames.verifyCodeScreen,
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
                  // TODO: implement listener
                },
                builder: (context, state) {
                  if (state is LoadingState) {
                    return const CircularProgressIndicator();
                  }
                  return MainButton(
                    text: AppStrings.sendOtpCode,
                    onTaPeressed: () {
                      BlocProvider.of<AuthCubit>(
                        context,
                      ).sendSMS(_controller.text);
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
