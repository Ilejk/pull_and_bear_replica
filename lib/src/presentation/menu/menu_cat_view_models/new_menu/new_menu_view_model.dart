import 'dart:async';
import 'dart:ffi';

import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/menu_new_cat_use_case.dart';
import 'package:pull_and_bear_replica/src/presentation/base/base_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:rxdart/rxdart.dart';

class NewMenuViewModel extends BaseViewModel
    with NewMenuViewModelInputs, NewMenuViewModelOutputs {
  final MenuNewCatUseCase _menuNewCatUseCase;
  final StreamController _dataStreamController =
      BehaviorSubject<NewMenuViewObject>();

  NewMenuViewModel(this._menuNewCatUseCase);

  @override
  Sink get inputNewMenuData => _dataStreamController.sink;

  @override
  Stream<NewMenuViewObject> get outputNewMenuData =>
      _dataStreamController.stream.map((data) => data);

  @override
  void start() {
    _getNewMenu();
  }

  _getNewMenu() async {
    inputState.add(
      LoadingState(
        stateRendererType: StateRendererType.fullScreenLoadingState,
      ),
    );
    // ignore: void_checks
    (await _menuNewCatUseCase.execute(Void)).fold((failure) {
      inputState.add(
        ErrorState(
          StateRendererType.fullScreenErrorState,
          failure.message,
        ),
      );
    }, (newMenuObject) {
      inputState.add(ContentState());
      inputNewMenuData.add(NewMenuViewObject(
        newMenuObject.data.manNew1,
        newMenuObject.data.manNew2,
        newMenuObject.data.manNew3,
        newMenuObject.data.manNew4,
        newMenuObject.data.manNew5,
        newMenuObject.data.manNew6,
        newMenuObject.data.womanNew1,
        newMenuObject.data.womanNew2,
        newMenuObject.data.womanNew3,
        newMenuObject.data.womanNew4,
        newMenuObject.data.womanNew5,
        newMenuObject.data.womanNew6,
      ));
    });
  }
}

abstract class NewMenuViewModelInputs {
  Sink get inputNewMenuData;
}

abstract class NewMenuViewModelOutputs {
  Stream<NewMenuViewObject> get outputNewMenuData;
}

class NewMenuViewObject {
  List<ManNew1> manNew1;
  List<ManNew2> manNew2;
  List<ManNew3> manNew3;
  List<ManNew4> manNew4;
  List<ManNew5> manNew5;
  List<ManNew6> manNew6;
  List<WomanNew1> womanNew1;
  List<WomanNew2> womanNew2;
  List<WomanNew3> womanNew3;
  List<WomanNew4> womanNew4;
  List<WomanNew5> womanNew5;
  List<WomanNew6> womanNew6;
  NewMenuViewObject(
    this.manNew1,
    this.manNew2,
    this.manNew3,
    this.manNew4,
    this.manNew5,
    this.manNew6,
    this.womanNew1,
    this.womanNew2,
    this.womanNew3,
    this.womanNew4,
    this.womanNew5,
    this.womanNew6,
  );
}
