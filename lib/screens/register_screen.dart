import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_text_field.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/main_button.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final TextEditingController _controllerNameLastName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 67.h),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                33.3.h.height,
                AppAvatar(),
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
                MainButton(text: AppStrings.next, onTaPeressed: () {}),
                143.h.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
