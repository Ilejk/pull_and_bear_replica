import 'dart:async';
import 'dart:ffi';

import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/menu_use_case.dart';
import 'package:pull_and_bear_replica/src/presentation/base/base_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:rxdart/rxdart.dart';

class MenuViewModel extends BaseViewModel
    with MenuViewModelInputs, MenuViewModelOutputs {
  final MenuUseCase _menuUseCase;
  final StreamController _dataStreamController =
      BehaviorSubject<MenuViewObject>();

  MenuViewModel(this._menuUseCase);

  @override
  Sink get inputMenuData => _dataStreamController.sink;

  @override
  Stream<MenuViewObject> get outputMenuData =>
      _dataStreamController.stream.map((data) => data);

  @override
  void start() {
    _getMenu();
  }

  _getMenu() async {
    inputState.add(
      LoadingState(
        stateRendererType: StateRendererType.fullScreenLoadingState,
      ),
    );
    // ignore: void_checks
    (await _menuUseCase.execute(Void)).fold((failure) {
      inputState.add(
        ErrorState(
          StateRendererType.fullScreenErrorState,
          failure.message,
        ),
      );
    }, (menuObject) {
      inputState.add(ContentState());
      inputMenuData.add(
        MenuViewObject(
          menuObject.data.accessoriesMan,
          menuObject.data.accessoriesWoman,
          menuObject.data.bagsMan,
          menuObject.data.bagsWoman,
          menuObject.data.basicsMan,
          menuObject.data.bikinisWoman,
          menuObject.data.clothingMan,
          menuObject.data.clothingWoman,
          menuObject.data.denimWoman,
          menuObject.data.equalsWoman,
          menuObject.data.exclusiveWoman,
          menuObject.data.jeansMan,
          menuObject.data.licensedMan,
          menuObject.data.midSeasonMan,
          menuObject.data.midSeasonWoman,
          menuObject.data.newMan,
          menuObject.data.newWoman,
          menuObject.data.pacificWoman,
          menuObject.data.shoesMan,
          menuObject.data.shoesWoman,
          menuObject.data.stwdMan,
          menuObject.data.swimWearMan,
          menuObject.data.unisexMan,
          menuObject.data.unisexWoman,
        ),
      );
    });
  }

  @override
  void dispose() {
    _dataStreamController.close();
    super.dispose();
  }
}

abstract class MenuViewModelInputs {
  Sink get inputMenuData;
}

abstract class MenuViewModelOutputs {
  Stream<MenuViewObject> get outputMenuData;
}

class MenuViewObject {
  List<NewMan> newMan;
  List<MidSeasonMan> midSeasonMan;
  List<ClothingMan> clothingMan;
  List<SwimWearMan> swimWearMan;
  List<JeansMan> jeansMan;
  List<ShoesMan> shoesMan;
  List<AccessoriesMan> accessoriesMan;
  List<BagsMan> bagsMan;
  List<LicensedMan> licensedMan;
  List<StwdMan> stwdMan;
  List<BasicsMan> basicsMan;
  List<UnisexMan> unisexMan;
  List<NewWoman> newWoman;
  List<MidSeasonWoman> midSeasonWoman;
  List<ClothingWoman> clothingWoman;
  List<BikinisWoman> bikinisWoman;
  List<DenimWoman> denimWoman;
  List<ShoesWoman> shoesWoman;
  List<BagsWoman> bagsWoman;
  List<AccessoriesWoman> accessoriesWoman;
  List<EqualsWoman> equalsWoman;
  List<ExclusiveWoman> exclusiveWoman;
  List<PacificWoman> pacificWoman;
  List<UnisexWoman> unisexWoman;

  MenuViewObject(
    this.accessoriesMan,
    this.accessoriesWoman,
    this.bagsMan,
    this.bagsWoman,
    this.basicsMan,
    this.bikinisWoman,
    this.clothingMan,
    this.clothingWoman,
    this.denimWoman,
    this.equalsWoman,
    this.exclusiveWoman,
    this.jeansMan,
    this.licensedMan,
    this.midSeasonMan,
    this.midSeasonWoman,
    this.newMan,
    this.newWoman,
    this.pacificWoman,
    this.shoesMan,
    this.shoesWoman,
    this.stwdMan,
    this.swimWearMan,
    this.unisexMan,
    this.unisexWoman,
  );
}
