import 'dart:async';

import 'package:pull_and_bear_replica/src/domain/use_case/login_use_case.dart';
import 'package:pull_and_bear_replica/src/presentation/base/base_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/freezed_data/freezed_data.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';

class LoginViewModel extends BaseViewModel
    with LoginViewModelInputs, LoginViewModelOutputs {
  final StreamController _userNameStreamController =
      StreamController<String>.broadcast();
  final StreamController _userPasswordStreamController =
      StreamController<String>.broadcast();
  final StreamController _isAllInputValidStreamController =
      StreamController<void>.broadcast();
  final StreamController isUserLoggedInSuccessfullyStreamController =
      StreamController<bool>.broadcast();

  var loginObject = LoginObject('', '');

  final LoginUseCase _loginUseCase;
  LoginViewModel(this._loginUseCase);

  @override
  Sink get inputIsAllInputsValid => _isAllInputValidStreamController.sink;

  @override
  Sink get inputPassword => _userPasswordStreamController.sink;

  @override
  Sink get inputUserName => _userNameStreamController.sink;

  @override
  login() async {
    inputState.add(
      LoadingState(
        stateRendererType: StateRendererType.popUpLoadingState,
      ),
    );
    (await _loginUseCase.execute(
      LoginUseCaseInput(
        loginObject.userName,
        loginObject.password,
      ),
    ))
        .fold((failure) {
      inputState.add(
        ErrorState(
          StateRendererType.popUpErrorState,
          failure.message,
        ),
      );
    }, (success) {
      inputState.add(ContentState());
      isUserLoggedInSuccessfullyStreamController.add(true);
    });
  }

  @override
  Stream<bool> get outputIsAllInputValid =>
      _isAllInputValidStreamController.stream.map(
        (_) => _isAllInputsValid(),
      );
  @override
  Stream<bool> get outputIsPasswordValid =>
      _userPasswordStreamController.stream.map(
        (password) => _isPasswordValid(password),
      );

  @override
  Stream<bool> get outputIsUserNameValid =>
      _userNameStreamController.stream.map(
        (userName) => _isUserNameValid(userName),
      );

  @override
  setPassword(String password) {
    inputPassword.add(password);
    loginObject = loginObject.copyWith(password: password);
    _validate();
  }

  @override
  setUserName(String userName) {
    inputUserName.add(userName);
    loginObject = loginObject.copyWith(userName: userName);
    _validate();
  }

  @override
  void start() {
    inputState.add(
      ContentState(),
    );
  }

  @override
  void dispose() {
    _isAllInputValidStreamController.close();
    _userNameStreamController.close();
    _userPasswordStreamController.close();
    isUserLoggedInSuccessfullyStreamController.close();
  }

  bool _isPasswordValid(String password) {
    return password.isNotEmpty;
  }

  bool _isUserNameValid(String userName) {
    return userName.isNotEmpty;
  }

  _validate() {
    inputIsAllInputsValid.add(null);
  }

  bool _isAllInputsValid() {
    return _isPasswordValid(loginObject.password) &&
        _isUserNameValid(loginObject.userName);
  }
}

abstract class LoginViewModelInputs {
  setUserName(String userName);
  setPassword(String password);
  login();
  Sink get inputUserName;
  Sink get inputPassword;
  Sink get inputIsAllInputsValid;
}

abstract class LoginViewModelOutputs {
  Stream<bool> get outputIsUserNameValid;
  Stream<bool> get outputIsPasswordValid;
  Stream<bool> get outputIsAllInputValid;
}
