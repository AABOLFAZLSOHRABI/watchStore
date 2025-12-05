import 'package:flutter/material.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';

class RegistrationAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RegistrationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appBar,
      scrolledUnderElevation: 0,
      toolbarHeight: AppDimes.registrationAppBarHeight,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        // back to screen 
        onPressed: () => Navigator.pop(context),
      ),
      title: const SizedBox(),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: AppDimes.largeW),
          child: Text(AppStrings.register, style: LightAppTestState.title),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDimes.registrationAppBarHeight);
}
