import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';

class BadgeCartAppBar extends StatelessWidget {
  const BadgeCartAppBar({super.key, this.count = 0});
  final int count;
  @override
  Widget build(BuildContext context) {
    return count > 0
        ? Badge(
            badgeContent: Text(
              count.toString(),
              style: TextStyle(color: Colors.white),
            ),
            badgeStyle: BadgeStyle(badgeColor: Colors.red),
            position: BadgePosition.topEnd(top: 0, end: 3),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                Assets.svg.cart,
                colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
              ),
            ),
          )
        : SvgPicture.asset(
            Assets.svg.cart,
            colorFilter: ColorFilter.mode(Colors.black, BlendMode.srcIn),
          );
  }
}
