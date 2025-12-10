import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// url https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png
class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(height: 222.h, width: 355.w, color: Colors.red);
  }
}
