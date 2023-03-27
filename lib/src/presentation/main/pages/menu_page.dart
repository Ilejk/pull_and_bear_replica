import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/main.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/menu/menu_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final MenuViewModel _viewModel = instance<MenuViewModel>();
  bool index = true;
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
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: StreamBuilder<FlowState>(
            stream: _viewModel.outputState,
            builder: (context, snapshot) {
              return snapshot.data
                      ?.getScreenWidget(context, _getContentWidget(), () {
                    _viewModel.start();
                  }) ??
                  Container();
            },
          ),
        ),
      ),
    );
  }

  Widget _getContentWidget() {
    if (index) {
      return _getManContentWidget();
    } else {
      return _getWomanContentWidget();
    }
  }

  Widget _getAppBar() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = false;
              });
            },
            child: Container(
              height: SizeManager.s50,
              decoration: BoxDecoration(
                color: index == false
                    ? ColorManager.white
                    : ColorManager.veryLighGrey,
                border: Border(
                  top: BorderSide(
                    color: ColorManager.veryLighGrey,
                    width: SizeManager.s0_7,
                  ),
                  bottom: BorderSide(
                    color: index == false
                        ? ColorManager.black
                        : ColorManager.veryLighGrey,
                    width: SizeManager.s3,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  StringsManager.woman,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s18,
                    fontWeight: FontWeight.w700,
                    color: index == false
                        ? ColorManager.black
                        : ColorManager.lightGrey,
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                index = true;
              });
            },
            child: Container(
              height: SizeManager.s50,
              decoration: BoxDecoration(
                color: index == true
                    ? ColorManager.white
                    : ColorManager.veryLighGrey,
                border: Border(
                  top: BorderSide(
                    color: ColorManager.veryLighGrey,
                    width: SizeManager.s0_7,
                  ),
                  bottom: BorderSide(
                    color: index == true
                        ? ColorManager.black
                        : ColorManager.veryLighGrey,
                    width: SizeManager.s3,
                  ),
                ),
              ),
              child: Center(
                child: Text(
                  StringsManager.man,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: FontConstants.fontFamily,
                    fontSize: FontSize.s18,
                    fontWeight: FontWeight.w700,
                    color: index == true
                        ? ColorManager.black
                        : ColorManager.lightGrey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _getManContentWidget() {
    return StreamBuilder<MenuViewObject>(
      stream: _viewModel.outputMenuData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getAppBar(),
            _getNewManContentWidget(snapshot.data?.newMan),
            _getMidSeasonManContentWidget(snapshot.data?.midSeasonMan),
            _getClothingManContentWidget(snapshot.data?.clothingMan),
            _getSwimWearManWidget(snapshot.data?.swimWearMan),
            _getJeansManContentWidget(snapshot.data?.jeansMan),
            _getShoesManContentWidget(snapshot.data?.shoesMan),
            _getAccessoriesManContentWidget(snapshot.data?.accessoriesMan),
            _getBagsManContentWidget(snapshot.data?.bagsMan),
            _getLicensedManContentWidget(snapshot.data?.licensedMan),
            _getStwdManContentWidget(snapshot.data?.stwdMan),
            _getBasicsManContentWidget(snapshot.data?.basicsMan),
            _getUnisexManContentWidget(snapshot.data?.unisexMan),
            _getBottomContentListWidget(),
          ],
        );
      },
    );
  }

  Widget _getWomanContentWidget() {
    return StreamBuilder<MenuViewObject>(
      stream: _viewModel.outputMenuData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getAppBar(),
            _getNewWomanContentWidget(snapshot.data?.newWoman),
            _getMidSeasonWomanContentWidget(snapshot.data?.midSeasonWoman),
            _getClothingWomanContentWidget(snapshot.data?.clothingWoman),
            _getBikinisWomanContentWidget(snapshot.data?.bikinisWoman),
            _getDenimWomanContentWidget(snapshot.data?.denimWoman),
            _getShoesWomanContentWidget(snapshot.data?.shoesWoman),
            _getBagsWomanContentWidget(snapshot.data?.bagsWoman),
            _getAccessoriesWomanContentWidget(snapshot.data?.accessoriesWoman),
            _getEqualsWomanContentWidget(snapshot.data?.equalsWoman),
            _getExclusiveWomanContentWidget(snapshot.data?.exclusiveWoman),
            _getPacificWomanContentWidget(snapshot.data?.pacificWoman),
            _getUnisexWomanContentWidget(snapshot.data?.unisexWoman),
            _getBottomContentListWidget(),
          ],
        );
      },
    );
  }

  Widget _getBottomContentListWidget() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _bottomContentListTile(StringsManager.careers),
        _bottomContentListTile(StringsManager.joinLife),
        _bottomContentListTile(StringsManager.pAbCommunitySmall),
        _bottomContentListTile(StringsManager.faqs),
        _bottomContentListTile(StringsManager.howToReturn),
        _bottomContentListTile(StringsManager.giftCard),
        _bottomContentListTile(StringsManager.stores),
        _bottomContentListTile(StringsManager.newsletter),
      ],
    );
  }

  Container _bottomContentListTile(String title) {
    return Container(
      width: double.infinity,
      height: SizeManager.s100,
      decoration: BoxDecoration(
        color: ColorManager.white,
        border: Border(
          bottom: BorderSide(
            color: ColorManager.veryLighGrey,
            width: SizeManager.s0_7,
          ),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: ColorManager.black,
          fontSize: FontSize.s20,
          fontWeight: FontWeight.w500,
          fontFamily: FontConstants.fontFamily,
        ),
      ),
    );
  }

  Widget _contentListTile(String image, String title, Color color) {
    return Container(
      width: double.infinity,
      height: SizeManager.s130,
      decoration: BoxDecoration(
        color: ColorManager.white,
        border: Border(
          bottom: BorderSide(
            color: ColorManager.veryLighGrey,
            width: SizeManager.s0_7,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: SizeManager.s110,
            height: SizeManager.s110,
            child: Padding(
              padding: const EdgeInsets.all(PaddingManager.p12),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(SizeManager.s16),
                child: Image.network(image),
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: color,
              fontSize: FontSize.s22,
              fontWeight: FontWeight.w700,
              fontFamily: FontConstants.fontFamily,
            ),
          ),
        ],
      ),
    );
  }

  Widget _getNewWomanContentWidget(List<NewWoman>? newWoman) {
    if (newWoman != null) {
      final image = newWoman[0].image;
      final title = newWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getMidSeasonWomanContentWidget(List<MidSeasonWoman>? midSeasonWoman) {
    if (midSeasonWoman != null) {
      final image = midSeasonWoman[0].image;
      final title = midSeasonWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.green,
      );
    } else {
      return Container();
    }
  }

  Widget _getClothingWomanContentWidget(List<ClothingWoman>? clothingWoman) {
    if (clothingWoman != null) {
      final image = clothingWoman[0].image;
      final title = clothingWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getSwimWearManWidget(List<SwimWearMan>? swimWearMan) {
    if (swimWearMan != null) {
      final image = swimWearMan[0].image;
      final title = swimWearMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getDenimWomanContentWidget(List<DenimWoman>? denimWoman) {
    if (denimWoman != null) {
      final image = denimWoman[0].image;
      final title = denimWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.blue,
      );
    } else {
      return Container();
    }
  }

  Widget _getShoesWomanContentWidget(List<ShoesWoman>? shoesWoman) {
    if (shoesWoman != null) {
      final image = shoesWoman[0].image;
      final title = shoesWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getBagsWomanContentWidget(List<BagsWoman>? bagsWoman) {
    if (bagsWoman != null) {
      final image = bagsWoman[0].image;
      final title = bagsWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getAccessoriesWomanContentWidget(
      List<AccessoriesWoman>? accessoriesWoman) {
    if (accessoriesWoman != null) {
      final image = accessoriesWoman[0].image;
      final title = accessoriesWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getEqualsWomanContentWidget(List<EqualsWoman>? equalsWoman) {
    if (equalsWoman != null) {
      final image = equalsWoman[0].image;
      final title = equalsWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getExclusiveWomanContentWidget(List<ExclusiveWoman>? exclusiveWoman) {
    if (exclusiveWoman != null) {
      final image = exclusiveWoman[0].image;
      final title = exclusiveWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getPacificWomanContentWidget(List<PacificWoman>? pacificWoman) {
    if (pacificWoman != null) {
      final image = pacificWoman[0].image;
      final title = pacificWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getUnisexWomanContentWidget(List<UnisexWoman>? unisexWoman) {
    if (unisexWoman != null) {
      final image = unisexWoman[0].image;
      final title = unisexWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getNewManContentWidget(List<NewMan>? newMan) {
    if (newMan != null) {
      final image = newMan[0].image;
      final title = newMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getMidSeasonManContentWidget(List<MidSeasonMan>? midSeasonMan) {
    if (midSeasonMan != null) {
      final image = midSeasonMan[0].image;
      final title = midSeasonMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.green,
      );
    } else {
      return Container();
    }
  }

  Widget _getClothingManContentWidget(List<ClothingMan>? clothingMan) {
    if (clothingMan != null) {
      final image = clothingMan[0].image;
      final title = clothingMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getBikinisWomanContentWidget(List<BikinisWoman>? bikinisWoman) {
    if (bikinisWoman != null) {
      final image = bikinisWoman[0].image;
      final title = bikinisWoman[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getJeansManContentWidget(List<JeansMan>? jeansMan) {
    if (jeansMan != null) {
      final image = jeansMan[0].image;
      final title = jeansMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getShoesManContentWidget(List<ShoesMan>? shoesMan) {
    if (shoesMan != null) {
      final image = shoesMan[0].image;
      final title = shoesMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getAccessoriesManContentWidget(List<AccessoriesMan>? accessoriesMan) {
    if (accessoriesMan != null) {
      final image = accessoriesMan[0].image;
      final title = accessoriesMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getBagsManContentWidget(List<BagsMan>? bagsMan) {
    if (bagsMan != null) {
      final image = bagsMan[0].image;
      final title = bagsMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getLicensedManContentWidget(List<LicensedMan>? licensedMan) {
    if (licensedMan != null) {
      final image = licensedMan[0].image;
      final title = licensedMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getStwdManContentWidget(List<StwdMan>? stwdMan) {
    if (stwdMan != null) {
      final image = stwdMan[0].image;
      final title = stwdMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getBasicsManContentWidget(List<BasicsMan>? basicsMan) {
    if (basicsMan != null) {
      final image = basicsMan[0].image;
      final title = basicsMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }

  Widget _getUnisexManContentWidget(List<UnisexMan>? unisexMan) {
    if (unisexMan != null) {
      final image = unisexMan[0].image;
      final title = unisexMan[0].title;
      return _contentListTile(
        image,
        title,
        ColorManager.black,
      );
    } else {
      return Container();
    }
  }
}
