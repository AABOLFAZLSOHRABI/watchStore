import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:watch_store/gen/assets.gen.dart';
import 'package:watch_store/res/strings.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(Assets.svg.back),
                Text(AppStrings.viewAll),
              ],
            ),
            Text(AppStrings.amazing),
          ],
        ),
      ),
    );
  }
}
