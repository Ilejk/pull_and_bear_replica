import 'dart:async';
import 'dart:ffi';

import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/home_use_case.dart';
import 'package:pull_and_bear_replica/src/presentation/base/base_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:rxdart/rxdart.dart';

class HomeViewModel extends BaseViewModel
    with HomeViewModelInputs, HomeViewModelOutputs {
  final HomeUseCase _homeUseCase;
  final StreamController _dataStreamController =
      BehaviorSubject<HomeViewObject>();

  HomeViewModel(this._homeUseCase);

  @override
  void start() {
    _getHome();
  }

  _getHome() async {
    inputState.add(
      LoadingState(
        stateRendererType: StateRendererType.fullScreenLoadingState,
      ),
    );
    // ignore: void_checks
    (await _homeUseCase.execute(Void)).fold((failure) {
      inputState.add(
        ErrorState(
          StateRendererType.fullScreenErrorState,
          failure.message,
        ),
      );
    }, (homeObject) {
      inputState.add(ContentState());
      inputHomeData.add(
        HomeViewObject(
          homeObject.data.news,
          homeObject.data.midSeason,
          homeObject.data.hollywood,
          homeObject.data.jeans,
          homeObject.data.tShirts,
          homeObject.data.fanCorner,
          homeObject.data.community,
        ),
      );
    });
  }

  @override
  void dispose() {
    _dataStreamController.close();
    super.dispose();
  }

  @override
  Sink get inputHomeData => _dataStreamController.sink;

  @override
  Stream<HomeViewObject> get outputHomeData =>
      _dataStreamController.stream.map((data) => data);
}

abstract class HomeViewModelInputs {
  Sink get inputHomeData;
}

abstract class HomeViewModelOutputs {
  Stream<HomeViewObject> get outputHomeData;
}

class HomeViewObject {
  List<News> news;
  List<MidSeason> midSeason;
  List<Hollywood> hollywood;
  List<Jeans> jeans;
  List<TShirts> tShirts;
  List<FanCorner> fanCorner;
  List<Community> community;

  HomeViewObject(
    this.news,
    this.midSeason,
    this.hollywood,
    this.jeans,
    this.tShirts,
    this.fanCorner,
    this.community,
  );
}
