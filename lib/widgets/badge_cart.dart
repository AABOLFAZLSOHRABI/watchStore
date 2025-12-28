import 'package:badges/badges.dart';
import 'package:flutter/material.dart' hide Badge;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:watch_store/gen/assets.gen.dart';

class BadgeCartAppBar extends StatelessWidget {
  const BadgeCartAppBar({
    super.key,
    this.count = 0,
    this.iconColor = Colors.black,
  });

  final int count;
  final Color iconColor;

  static const _badgeStyle = BadgeStyle(badgeColor: Colors.red);
  static const _textStyle = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    final colorFilter = ColorFilter.mode(iconColor, BlendMode.srcIn);

    return count > 0
        ? Badge(
            badgeContent: Text(count.toString(), style: _textStyle),
            badgeStyle: _badgeStyle,
            position: BadgePosition.topEnd(top: -5, end: -3),
            child: SvgPicture.asset(
              Assets.svg.cart,
              fit: BoxFit.none,
              colorFilter: colorFilter,
            ),
          )
        : SvgPicture.asset(
            Assets.svg.cart,
            fit: BoxFit.none,
            colorFilter: colorFilter,
          );
  }
}
