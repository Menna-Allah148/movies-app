import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Announcement extends StatelessWidget {
  // List of images for the slider
  final List<String> sliderImagePaths = [
    'lib/images/Headphone (2).png',
    'lib/images/var2.png',
    'lib/images/var3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      autoPlayInterval: 3500,
      isLoop: true,
      
      indicatorColor: Colors.transparent, // Set to transparent to hide
      indicatorBackgroundColor: Colors.transparent, // Set to transparent to hide
      children: sliderImagePaths
          .map((imagePath) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.fill,
                  width: 398.w,
                  height: 200.h,
                ),
              ))
          .toList(),
    );
  }
}

class MyAssets {
  // Image assets can still be defined here for future use if needed
  final Image announcement1 = Image.asset('lib/images/var1.png');
  final Image announcement2 = Image.asset('lib/images/var2.png');
  final Image announcement3 = Image.asset('lib/images/var3.png');
}
