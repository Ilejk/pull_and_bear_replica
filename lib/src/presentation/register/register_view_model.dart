import 'dart:async';
import 'dart:math';

import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/app/functions.dart';
import 'package:pull_and_bear_replica/src/domain/use_case/register_use_case.dart';
import 'package:pull_and_bear_replica/src/presentation/base/base_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/freezed_data/freezed_data.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';

class RegisterViewModel extends BaseViewModel
    with RegisterViewModelInputs, RegisterViewModelOutputs {
  final StreamController _userNameStreamController =
      StreamController<String>.broadcast();
  final StreamController _mobileNumberStreamController =
      StreamController<String>.broadcast();
  final StreamController _emailStreamController =
      StreamController<String>.broadcast();
  final StreamController _passwordStreamController =
      StreamController<String>.broadcast();
  final StreamController _isAllInputValidStreamController =
      StreamController<void>.broadcast();
  final StreamController isUserRegisteredSuccessfullyStreamController =
      StreamController<bool>();

  final RegisterUseCase _registerUseCase;

  var registerVieObject = RegisterObject(
    Constants.empty,
    Constants.empty,
    Constants.empty,
    Constants.empty,
  );
  RegisterViewModel(this._registerUseCase);
  @override
  Sink get inputEmail => _emailStreamController.sink;

  @override
  Sink get inputIsAllInputsValid => _isAllInputValidStreamController.sink;

  @override
  Sink get inputMobileNumber => _mobileNumberStreamController.sink;

  @override
  Sink get inputPassword => _passwordStreamController.sink;

  @override
  Sink get inputUserName => _userNameStreamController.sink;

  @override
  Stream<String?> get outputErrorEmail => outputIsEmailValid.map(
        (isEmailValid) => isEmailValid ? null : StringsManager.invalidEmail,
      );

  @override
  Stream<String?> get outputErrorMobileNumber => outputIsMobileNumberValid.map(
        (isNumberValid) => isNumberValid ? null : StringsManager.invalidNumber,
      );

  @override
  Stream<String?> get outputErrorPassword => outputIsPasswordValid.map(
        (isPasswordValid) =>
            isPasswordValid ? null : StringsManager.invalidPassword,
      );

  @override
  Stream<String?> get outputErrorUserName => outputIsUserNameValid.map(
        (isUsernameValid) =>
            isUsernameValid ? null : StringsManager.invalidUsername,
      );

  @override
  Stream<bool> get outputIsAllInputsValid =>
      _isAllInputValidStreamController.stream.map(
        (_) => _validateAllInputs(),
      );

  @override
  Stream<bool> get outputIsEmailValid => _emailStreamController.stream.map(
        (email) => isEmailValid(email),
      );

  @override
  Stream<bool> get outputIsMobileNumberValid =>
      _mobileNumberStreamController.stream.map(
        (mobileNumber) => _isMobileNumberValid(mobileNumber),
      );

  @override
  Stream<bool> get outputIsPasswordValid =>
      _passwordStreamController.stream.map(
        (password) => _isPasswordValid(password),
      );

  @override
  Stream<bool> get outputIsUserNameValid =>
      _userNameStreamController.stream.map(
        (userName) => _isUserNameValid(userName),
      );

  @override
  register() async {
    inputState.add(
        LoadingState(stateRendererType: StateRendererType.popUpLoadingState));
    (await _registerUseCase.execute(
      RegisterUseCaseInput(
        userName: registerVieObject.userName,
        email: registerVieObject.email,
        password: registerVieObject.password,
        mobileNumber: registerVieObject.mobileNumber,
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
      isUserRegisteredSuccessfullyStreamController.add(true);
    });
  }

  @override
  setEmail(String email) {
    inputEmail.add(email);
    if (isEmailValid(email)) {
      registerVieObject = registerVieObject.copyWith(email: email);
    } else {
      registerVieObject = registerVieObject.copyWith(email: Constants.empty);
    }
    _validate();
  }

  @override
  setMobileNumber(String mobileNumber) {
    inputMobileNumber.add(mobileNumber);
    if (_isMobileNumberValid(mobileNumber)) {
      registerVieObject =
          registerVieObject.copyWith(mobileNumber: mobileNumber);
    } else {
      registerVieObject = registerVieObject.copyWith(email: Constants.empty);
    }
    _validate();
  }

  @override
  setPassword(String password) {
    inputPassword.add(password);
    if (_isPasswordValid(password)) {
      registerVieObject = registerVieObject.copyWith(password: password);
    } else {
      registerVieObject = registerVieObject.copyWith(password: Constants.empty);
    }
    _validate();
  }

  @override
  setUserName(String userName) {
    inputUserName.add(userName);
    if (_isUserNameValid(userName)) {
      registerVieObject = registerVieObject.copyWith(userName: userName);
    } else {
      registerVieObject = registerVieObject.copyWith(userName: Constants.empty);
    }
    _validate();
  }

  @override
  void start() {
    inputState.add(ContentState());
  }

  @override
  void dispose() {
    _userNameStreamController.close();
    _emailStreamController.close();
    _passwordStreamController.close();
    _mobileNumberStreamController.close();
    _isAllInputValidStreamController.close();
    isUserRegisteredSuccessfullyStreamController.close();
    super.dispose();
  }

  bool _isUserNameValid(String userName) {
    return userName.length >= 8;
  }

  bool _isMobileNumberValid(String mobileNumber) {
    return mobileNumber.length >= 10;
  }

  bool _isPasswordValid(String password) {
    return password.length >= 2;
  }

  bool _validateAllInputs() {
    return registerVieObject.email.isNotEmpty &&
        registerVieObject.password.isNotEmpty &&
        registerVieObject.userName.isNotEmpty &&
        registerVieObject.mobileNumber.isNotEmpty;
  }

  _validate() {
    inputIsAllInputsValid.add(null);
  }
}

abstract class RegisterViewModelInputs {
  register();
  setUserName(String userName);
  setMobileNumber(String mobileNumber);
  setEmail(String email);
  setPassword(String password);

  Sink get inputUserName;
  Sink get inputMobileNumber;
  Sink get inputEmail;
  Sink get inputPassword;
  Sink get inputIsAllInputsValid;
}

abstract class RegisterViewModelOutputs {
  Stream<bool> get outputIsUserNameValid;
  Stream<String?> get outputErrorUserName;
  Stream<bool> get outputIsMobileNumberValid;
  Stream<String?> get outputErrorMobileNumber;
  Stream<bool> get outputIsEmailValid;
  Stream<String?> get outputErrorEmail;
  Stream<bool> get outputIsPasswordValid;
  Stream<String?> get outputErrorPassword;
  Stream<bool> get outputIsAllInputsValid;
}
