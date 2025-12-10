import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/components/text_style.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/colors.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/res/strings.dart';
import 'package:watch_store/widgets/app_logo.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key, required this.onTab});
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(AppDimes.mediumRadius),
      child: InkWell(
        onTap: onTab,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.searchBar,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                blurRadius: 3,
                color: AppColors.shadow,
                offset: Offset(2, 3),
              ),
            ],
          ),
          height: 52,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(Assets.svg.search),
              Text(AppStrings.searchProduct, style: LightAppTestState.hint),
              AppLogo(size: LogoSize.small),
            ],
          ),
        ),
      ),
    );
  }
}
