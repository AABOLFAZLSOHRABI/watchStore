import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/res/dimes.dart';
import 'package:watch_store/widgets/loading.dart';

final List<String> imgList = [
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/Casio_desktop_banner_1_.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/Orient_banner_desktop_1.png",
  "http://ticktackgallery.com/media/wysiwyg/ticktackbanner/romanson_banner_desktop_1.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/Seiko_banner_desktop_1.png",
];

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});
  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselSliderController _controller = CarouselSliderController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      width: 355.w,
      child: Column(
        children: [
          Expanded(
            child: CarouselSlider(
              carouselController: _controller,
              items: imgList
                  .map(
                    (url) => Padding(
                      padding: EdgeInsets.all(AppDimes.smallRadius.r),
                      child: SkeletonNetworkImage(
                        url: url,
                        borderRadius: BorderRadius.circular(AppDimes.avatar.sp),
                      ),
                    ),
                  )
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 1.0,
                autoPlay: true,
                enlargeCenterPage: false,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imgList.asMap().entries.map((e) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      _controller.animateToPage(e.key);
                    },
                    child: Container(
                      width: 8,
                      height: 8,
                      margin: EdgeInsets.symmetric(horizontal: 2),
                      decoration: BoxDecoration(
                        color: _current == e.key ? Colors.black : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
