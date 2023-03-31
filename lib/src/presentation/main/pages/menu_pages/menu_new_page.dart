import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/menu/menu_cat_view_models/new_menu/new_menu_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class MenuNewPage extends StatefulWidget {
  // bool index;

  // MenuNewPage(this.index, {super.key});

  @override
  State<MenuNewPage> createState() => _MenuNewPageState();
}

class _MenuNewPageState extends State<MenuNewPage> {
  final NewMenuViewModel _viewModel = instance<NewMenuViewModel>();

  @override
  void initState() {
    _bind();
    super.initState();
  }

  _bind() {
    _viewModel.start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorManager.white,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(
            Icons.arrow_back_ios,
            size: FontSize.s20,
            color: ColorManager.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: StreamBuilder<FlowState>(
              stream: _viewModel.outputState,
              builder: (context, snapshot) {
                return snapshot.data?.getScreenWidget(
                        context, _getWomanContentWidget(), () {
                      _viewModel.start();
                    }) ??
                    Container();
              },
            ),
          ),
        ),
      ),
    );
  }

  // Widget _getContentWidget(bool index) {
  //   if (index) {
  //     return _getManContentWidget();
  //   } else {
  //     return _getWomanContentWidget();
  //   }
  // }
  Widget _bigPictureContentWidget(String image1, String image2, String image3,
      String image4, String title, double price, VoidCallback onTap) {
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

  Widget _getMediumPictureContentWidget(
      VoidCallback onTap, String image, String title, double price) {
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
              height: SizeManager.s400,
              child: Image.network(image),
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

  Widget _getSmallPicutreContentWidget(
      VoidCallback onTap, String image, String title, double price) {
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

  Widget _getManContentWidget() {
    return StreamBuilder<NewMenuViewObject>(
      stream: _viewModel.outputNewMenuData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getNewMenuMan1(snapshot.data?.manNew1),
            _getNewMenuMan2(snapshot.data?.manNew2),
            _getNewMenuMan3(snapshot.data?.manNew3),
            _getNewMenuMan4(snapshot.data?.manNew4),
            _getNewMenuMan5(snapshot.data?.manNew5),
            _getNewMenuMan6(snapshot.data?.manNew6),
          ],
        );
      },
    );
  }

  Widget _getNewMenuMan1(List<ManNew1>? manNew1) {
    if (manNew1 != null) {
      final image1 = manNew1[0].image1;
      final image2 = manNew1[0].image2;
      final image3 = manNew1[0].image3;
      final image4 = manNew1[0].image4;
      final title = manNew1[0].title1;
      final price = manNew1[0].price1;
      return _bigPictureContentWidget(
        image1,
        image2,
        image3,
        image4,
        title,
        price,
        () {
          //TODO:
        },
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuMan2(List<ManNew2>? manNew2) {
    if (manNew2 != null) {
      final image = manNew2[0].image1;
      final title = manNew2[0].title1;
      final price = manNew2[0].price1;
      return _getMediumPictureContentWidget(
        () {
          //TODO:
        },
        image,
        title,
        price,
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuMan3(List<ManNew3>? manNew3) {
    if (manNew3 != null) {
      final image1 = manNew3[0].image1;
      final image2 = manNew3[0].image2;
      final image3 = manNew3[0].image3;
      final title1 = manNew3[0].title1;
      final title2 = manNew3[0].title2;
      final title3 = manNew3[0].title3;
      final price1 = manNew3[0].price1;
      final price2 = manNew3[0].price2;
      final price3 = manNew3[0].price3;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image1,
            title1,
            price1,
          ),
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image2,
            title2,
            price2,
          ),
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image3,
            title3,
            price3,
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuMan4(List<ManNew4>? manNew4) {
    if (manNew4 != null) {
      final image = manNew4[0].image1;
      final title = manNew4[0].title1;
      final price = manNew4[0].price1;
      return _getMediumPictureContentWidget(
        () {
          //TODO:
        },
        image,
        title,
        price,
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuMan5(List<ManNew5>? manNew5) {
    if (manNew5 != null) {
      final image1 = manNew5[0].image1;
      final image2 = manNew5[0].image2;
      final image3 = manNew5[0].image3;
      final image4 = manNew5[0].image1;
      final title = manNew5[0].title1;
      final price = manNew5[0].price1;
      return _bigPictureContentWidget(
        image1,
        image2,
        image3,
        image4,
        title,
        price,
        () {
          //TODO:
        },
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuMan6(List<ManNew6>? manNew6) {
    if (manNew6 != null) {
      final image1 = manNew6[0].image1;
      final image2 = manNew6[0].image2;
      final image3 = manNew6[0].image3;
      final title1 = manNew6[0].title1;
      final title2 = manNew6[0].title2;
      final title3 = manNew6[0].title3;
      final price1 = manNew6[0].price1;
      final price2 = manNew6[0].price2;
      final price3 = manNew6[0].price3;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image1,
            title1,
            price1,
          ),
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image2,
            title2,
            price2,
          ),
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image3,
            title3,
            price3,
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Widget _getWomanContentWidget() {
    return StreamBuilder<NewMenuViewObject>(
      stream: _viewModel.outputNewMenuData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getNewMenuWoman1(snapshot.data?.womanNew1),
            _getNewMenuWoman2(snapshot.data?.womanNew2),
            _getNewMenuWoman3(snapshot.data?.womanNew3),
            _getNewMenuWoman4(snapshot.data?.womanNew4),
            _getNewMenuWoman5(snapshot.data?.womanNew5),
            _getNewMenuWoman6(snapshot.data?.womanNew6),
          ],
        );
      },
    );
  }

  Widget _getNewMenuWoman1(List<WomanNew1>? womanNew1) {
    if (womanNew1 != null) {
      final image1 = womanNew1[0].image1;
      final image2 = womanNew1[0].image2;
      final image3 = womanNew1[0].image3;
      final image4 = womanNew1[0].image4;
      final title = womanNew1[0].title1;
      final price = womanNew1[0].price1;
      return _bigPictureContentWidget(
        image1,
        image2,
        image3,
        image4,
        title,
        price,
        () {},
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuWoman2(List<WomanNew2>? womanNew2) {
    if (womanNew2 != null) {
      final image = womanNew2[0].image1;
      final title = womanNew2[0].title1;
      final price = womanNew2[0].price1;
      return _getMediumPictureContentWidget(
        () {
          //TODO:
        },
        image,
        title,
        price,
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuWoman3(List<WomanNew3>? womanNew3) {
    if (womanNew3 != null) {
      final image1 = womanNew3[0].image1;
      final image2 = womanNew3[0].image2;
      final image3 = womanNew3[0].image3;
      final title1 = womanNew3[0].title1;
      final title2 = womanNew3[0].title2;
      final title3 = womanNew3[0].title3;
      final price1 = womanNew3[0].price1;
      final price2 = womanNew3[0].price2;
      final price3 = womanNew3[0].price3;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image1,
            title1,
            price1,
          ),
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image2,
            title2,
            price2,
          ),
          _getSmallPicutreContentWidget(
            () {
              //TODO:
            },
            image3,
            title3,
            price3,
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuWoman4(List<WomanNew4>? womanNew4) {
    if (womanNew4 != null) {
      final image = womanNew4[0].image1;
      final title = womanNew4[0].title1;
      final price = womanNew4[0].price1;
      return _getMediumPictureContentWidget(
        () {
          //TODO:
        },
        image,
        title,
        price,
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuWoman5(List<WomanNew5>? womanNew5) {
    if (womanNew5 != null) {
      final image1 = womanNew5[0].image1;
      final image2 = womanNew5[0].image2;
      final image3 = womanNew5[0].image3;
      final image4 = womanNew5[0].image1;
      final title = womanNew5[0].title1;
      final price = womanNew5[0].price1;
      return _bigPictureContentWidget(
        image1,
        image2,
        image3,
        image4,
        title,
        price,
        () {},
      );
    } else {
      return Container();
    }
  }

  Widget _getNewMenuWoman6(List<WomanNew6>? womanNew6) {
    if (womanNew6 != null) {
      final image1 = womanNew6[0].image1;
      final image2 = womanNew6[0].image2;
      final image3 = womanNew6[0].image3;
      final title1 = womanNew6[0].title1;
      final title2 = womanNew6[0].title2;
      final title3 = womanNew6[0].title3;
      final price1 = womanNew6[0].price1;
      final price2 = womanNew6[0].price2;
      final price3 = womanNew6[0].price3;
      return SingleChildScrollView(
        child: Row(
          children: [
            _getSmallPicutreContentWidget(
              () {
                //TODO:
              },
              image1,
              title1,
              price1,
            ),
            _getSmallPicutreContentWidget(
              () {
                //TODO:
              },
              image2,
              title2,
              price2,
            ),
            _getSmallPicutreContentWidget(
              () {
                //TODO:
              },
              image3,
              title3,
              price3,
            ),
          ],
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
