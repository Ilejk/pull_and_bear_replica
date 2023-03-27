import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/main.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/menu/menu_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final MenuViewModel _viewModel = instance<MenuViewModel>();
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    //TODO:
                  },
                  child: Container(
                    color: ColorManager.black,
                    height: SizeManager.s50,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    //TODO:
                  },
                  child: Container(
                    color: ColorManager.green,
                    height: SizeManager.s50,
                  ),
                ),
              ),
            ],
          ),
          Center(
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
        ],
      ),
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
            _getNewManContentWidget(),
            _getMidSeasonManContentWidget(),
            _getClothingManContentWidget(),
            _getSwimWearManWidget(),
            _getJeansManContentWidget(),
            _getShoesManContentWidget(),
            _getAccessoriesManContentWidget(),
            _getBagsManContentWidget(),
            _getLicensedManContentWidget(),
            _getStwdManContentWidget(),
            _getBasicsManContentWidget(),
            _getUnisexManContentWidget(),
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
            _getNewWomanContentWidget(),
            _getMidSeasonWomanContentWidget(),
            _getClothingWomanContentWidget(),
            _getBikinisWomanContentWidget(),
            _getDenimWomanContentWidget(),
            _getShoesWomanContentWidget(),
            _getBagsWomanContentWidget(),
            _getAccessoriesWomanContentWidget(),
            _getEqualsWomanContentWidget(),
            _getExclusiveWomanContentWidget(),
            _getPacificWomanContentWidget(),
            _getUnisexWomanContentWidget(),
            _getBottomContentListWidget(),
          ],
        );
      },
    );
  }

  Widget _getBottomContentListWidget() {}

  Widget _getNewWomanContentWidget() {}

  Widget _getMidSeasonWomanContentWidget() {}

  Widget _getClothingWomanContentWidget() {}

  Widget _getSwimWearManWidget() {}

  Widget _getDenimWomanContentWidget() {}

  Widget _getShoesWomanContentWidget() {}

  Widget _getBagsWomanContentWidget() {}

  Widget _getAccessoriesWomanContentWidget() {}

  Widget _getEqualsWomanContentWidget() {}

  Widget _getExclusiveWomanContentWidget() {}

  Widget _getPacificWomanContentWidget() {}

  Widget _getUnisexWomanContentWidget() {}

  Widget _getNewManContentWidget() {}

  Widget _getMidSeasonManContentWidget() {}

  Widget _getClothingManContentWidget() {}

  Widget _getBikinisWomanContentWidget() {}

  Widget _getJeansManContentWidget() {}

  Widget _getShoesManContentWidget() {}

  Widget _getAccessoriesManContentWidget() {}

  Widget _getBagsManContentWidget() {}

  Widget _getLicensedManContentWidget() {}

  Widget _getStwdManContentWidget() {}

  Widget _getBasicsManContentWidget() {}

  Widget _getUnisexManContentWidget() {}
}
