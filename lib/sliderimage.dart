import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductSlide extends StatelessWidget {
  const ProductSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      indicatorColor: const Color.fromARGB(255, 0, 0, 0),
      indicatorBackgroundColor: Colors.white,
      height: 300,
      autoPlayInterval: 3000,
      indicatorRadius: 4,
      isLoop: true,
      children:[
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset("assets/slider.png"),
            ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset("assets/phone1.jpeg"),
            ),
            
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset("assets/slider.png"),
            ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Image.asset("assets/phone1.jpeg"),
            ),
      ]
      
      );
  }
}