import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class BigPictureContentWidget extends StatelessWidget {
  const BigPictureContentWidget({
    Key? key,
    required this.image1,
    required this.image2,
    required this.image3,
    required this.image4,
    required this.title,
    required this.price,
    required this.onTap,
  }) : super(key: key);

  final String image1;
  final String image2;
  final String image3;
  final String image4;
  final String title;
  final double price;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: PaddingManager.p18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: SizeManager.s700,
              child: CarouselSlider(
                items: [
                  Image.network(image1),
                  Image.network(image2),
                  Image.network(image3),
                  Image.network(image4),
                ],
                options: CarouselOptions(
                  height: SizeManager.s700,
                  autoPlay: false,
                  enableInfiniteScroll: true,
                  enlargeCenterPage: false,
                  viewportFraction: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: PaddingManager.p12,
                  bottom: PaddingManager.p8,
                  top: PaddingManager.p12),
              child: Text(
                title,
                softWrap: true,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s13,
                  fontWeight: FontWeight.w400,
                  fontFamily: FontConstants.fontFamily,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: PaddingManager.p12),
              child: Text(
                '$price PLN',
                style: TextStyle(
                  color: ColorManager.black,
                  fontSize: FontSize.s14,
                  fontWeight: FontWeight.w700,
                  fontFamily: FontConstants.fontFamily,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
