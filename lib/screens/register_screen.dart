import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/route/names.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/main_button.dart';
import 'package:watch_store/widgets/registration_app_bar.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController _controllerNameLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: RegistrationAppBar(),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                33.3.h.height,
                AppAvatar(title: AppStrings.chooseProfileImage,),
                38.h.height,
                AppTextField(
                  label: AppStrings.nameLastName,
                  hint: AppStrings.hintNameLastName,
                  controller: _controllerNameLastName,
                ),
                14.h.height,
                AppTextField(
                  label: AppStrings.homeNumber,
                  hint: AppStrings.hintHomeNumber,
                  controller: _controllerNameLastName,
                ),
                14.h.height,
                AppTextField(
                  label: AppStrings.address,
                  hint: AppStrings.hintAddress,
                  controller: _controllerNameLastName,
                ),
                14.h.height,
                AppTextField(
                  label: AppStrings.postalCode,
                  hint: AppStrings.hintPostalCode,
                  controller: _controllerNameLastName,
                ),
                14.h.height,
                AppTextField(
                  label: AppStrings.location,
                  hint: AppStrings.hintLocation,
                  controller: _controllerNameLastName,
                  prefixIcon: Icon(Icons.location_on),
                ),
                29.h.height,
                MainButton(
                  text: AppStrings.next,
                  onTaPeressed: () {
                    context.go(ScreenNames.mainScreen);
                  },
                ),
                143.h.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
