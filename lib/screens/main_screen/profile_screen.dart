import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/extention.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/avatar.dart';
import 'package:watch_store/widgets/custom_app_bar.dart';
import 'package:watch_store/widgets/data_user_info.dart';
import 'package:watch_store/widgets/surface_box.dart';
import 'package:watch_store/widgets/status_action_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final statusActions = [
      StatusAction(
        iconAsset: Assets.svg.delivered,
        label: AppStrings.delivered,
        onTap: () {},
      ),
      StatusAction(
        iconAsset: Assets.svg.cancelled,
        label: AppStrings.cancelled,
        onTap: () {},
      ),
      StatusAction(
        iconAsset: Assets.svg.inProccess,
        label: AppStrings.inProcess,
        onTap: () {},
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(AppStrings.profile, style: AppTextStyle.title),
          ),
        ),
        body: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppDimes.largeH.h.height,
                AppAvatar(
                  title: AppStrings.replace.replaceAll(
                    AppStrings.replace,
                    "ابوالفضل سهرابی",
                  ),
                ),
                AppDimes.largeH.h.height,
                DataUserInfo(),
                SurfaceBox(
                  height: 50.h,
                  child: Align(
                    alignment: AlignmentGeometry.centerRight,
                    child: Text(
                      AppStrings.termOfService,
                      style: AppTextStyle.title,
                    ),
                  ),
                ),
                AppDimes.smallH.h.height,
                SurfaceBox(
                  height: 163.h,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: statusActions
                        .map(
                          (action) => Flexible(
                            fit: FlexFit.tight,
                            child: StatusActionItem(action: action),
                          ),
                        )
                        .toList(),
                  ),
                ),
                AppDimes.smallH.h.height,
                Image.asset(Assets.png.banner.path, fit: BoxFit.cover),
                AppDimes.largeH.h.height,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
