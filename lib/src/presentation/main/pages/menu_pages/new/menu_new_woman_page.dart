import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_pages/widgets/big_picture_content_widget.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_pages/widgets/medium_picture_content_widget.dart';
import 'package:pull_and_bear_replica/src/presentation/main/pages/menu_pages/widgets/small_picture_content_widget.dart';
import 'package:pull_and_bear_replica/src/presentation/menu/menu_cat_view_models/new_menu/new_menu_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';

class MenuNewWomanPage extends StatefulWidget {
  const MenuNewWomanPage({super.key});

  @override
  State<MenuNewWomanPage> createState() => _MenuNewWomanPageState();
}

class _MenuNewWomanPageState extends State<MenuNewWomanPage> {
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
      return BigPictureContentWidget(
          image1: image1,
          image2: image2,
          image3: image3,
          image4: image4,
          title: title,
          price: price,
          onTap: () {});
    } else {
      return Container();
    }
  }

  Widget _getNewMenuWoman2(List<WomanNew2>? womanNew2) {
    if (womanNew2 != null) {
      final image = womanNew2[0].image1;
      final title = womanNew2[0].title1;
      final price = womanNew2[0].price1;
      return MediumPictureContentWidget(
          onTap: () {
            //TODO:
          },
          image: image,
          title: title,
          price: price);
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
          SmallPictureContentWidget(
              onTap: () {
                //TODO:
              },
              image: image1,
              title: title1,
              price: price1),
          SmallPictureContentWidget(
              onTap: () {
                //TODO:
              },
              image: image2,
              title: title2,
              price: price2),
          SmallPictureContentWidget(
              onTap: () {
                //TODO:
              },
              image: image3,
              title: title3,
              price: price3),
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
      return MediumPictureContentWidget(
          onTap: () {
            //TODO:
          },
          image: image,
          title: title,
          price: price);
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
      return BigPictureContentWidget(
          image1: image1,
          image2: image2,
          image3: image3,
          image4: image4,
          title: title,
          price: price,
          onTap: () {});
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
            SmallPictureContentWidget(
                onTap: () {
                  //TODO:
                },
                image: image1,
                title: title1,
                price: price1),
            SmallPictureContentWidget(
                onTap: () {
                  //TODO:
                },
                image: image2,
                title: title2,
                price: price2),
            SmallPictureContentWidget(
                onTap: () {
                  //TODO:
                },
                image: image3,
                title: title3,
                price: price3),
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
