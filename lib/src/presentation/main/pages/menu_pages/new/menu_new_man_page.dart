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

class MenuNewManPage extends StatefulWidget {
  const MenuNewManPage({super.key});

  @override
  State<MenuNewManPage> createState() => _MenuNewManPageState();
}

class _MenuNewManPageState extends State<MenuNewManPage> {
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
                return snapshot.data
                        ?.getScreenWidget(context, _getManContentWidget(), () {
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
      return BigPictureContentWidget(
        image1: image1,
        image2: image2,
        image3: image3,
        image4: image4,
        title: title,
        price: price,
        onTap: () {
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

  Widget _getNewMenuMan4(List<ManNew4>? manNew4) {
    if (manNew4 != null) {
      final image = manNew4[0].image1;
      final title = manNew4[0].title1;
      final price = manNew4[0].price1;
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

  Widget _getNewMenuMan5(List<ManNew5>? manNew5) {
    if (manNew5 != null) {
      final image1 = manNew5[0].image1;
      final image2 = manNew5[0].image2;
      final image3 = manNew5[0].image3;
      final image4 = manNew5[0].image1;
      final title = manNew5[0].title1;
      final price = manNew5[0].price1;
      return BigPictureContentWidget(
          image1: image1,
          image2: image2,
          image3: image3,
          image4: image4,
          title: title,
          price: price,
          onTap: () {
            //TODO:
          });
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

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
