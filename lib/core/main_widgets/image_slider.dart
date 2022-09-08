


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ImageSlider extends StatelessWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction: 0.9,
        aspectRatio: 2.0,
        initialPage: 2,
        enableInfiniteScroll: true,
      ),
      itemCount: 15,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(

            width: 85.w,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25),
              image: const DecorationImage(
                image: AssetImage('assets/img/01.jpg'),
                fit: BoxFit.cover,
              ),
            ),

          ),
    );
  }
}
