import 'package:flutter/widgets.dart';

extension SizeBoxExtension on double {
    SizedBox get height =>SizedBox(height: toDouble(),);
    SizedBox get width =>SizedBox(width: toDouble(),);
}
