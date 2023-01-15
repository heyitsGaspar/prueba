import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});
  @override
  Widget build(BuildContext context) {
    return  ImageSlideshow(
       

          /// Width of the [ImageSlideshow].
          width: double.infinity,

          /// Height of the [ImageSlideshow].
          height: 200,

          /// The page to show when first creating the [ImageSlideshow].
          initialPage: 0,

          /// The color to paint the indicator.
          indicatorColor: Colors.blue,

          /// The color to paint behind th indicator.
          indicatorBackgroundColor: Colors.grey,

          /// The widgets to display in the [ImageSlideshow].
          /// Add the sample image file into the images folder
          // ignore: sort_child_properties_last
          children: [
            Image.asset(
              'images/lake.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/lake1.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/lake2.jpg',
              fit: BoxFit.cover,
            ),
            Image.asset(
              'images/lake3.jpg',
              fit: BoxFit.cover,
            ),
          ],

          
          onPageChanged: (value) {
            print('Page changed: $value');
          },

          
          autoPlayInterval: 2500,

          
          isLoop: true,
        );
      
    
  }
}