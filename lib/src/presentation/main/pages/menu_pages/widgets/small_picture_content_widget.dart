import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class SmallPictureContentWidget extends StatelessWidget {
  const SmallPictureContentWidget({
    Key? key,
    required this.onTap,
    required this.image,
    required this.title,
    required this.price,
  }) : super(key: key);

  final VoidCallback onTap;
  final String image;
  final String title;
  final double price;

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
              width: SizeManager.s140,
              height: SizeManager.s250,
              child: Image.network(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: PaddingManager.p12,
                  bottom: PaddingManager.p8,
                  top: PaddingManager.p12),
              child: SizedBox(
                width: SizeManager.s100,
                child: Text(
                  title,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: ColorManager.black,
                    fontSize: FontSize.s13,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontConstants.fontFamily,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: PaddingManager.p8),
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
