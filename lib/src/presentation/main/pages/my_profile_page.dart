import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pull_and_bear_replica/src/app/app_preferences.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/login/login_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/assets_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/routes_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class MyProfilePage extends StatefulWidget {
  const MyProfilePage({super.key});

  @override
  State<MyProfilePage> createState() => _MyProfilePageState();
}

class _MyProfilePageState extends State<MyProfilePage> {
  final LoginViewModel _viewModel = instance<LoginViewModel>();
  final AppPreferences _appPreferences = instance<AppPreferences>();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  _bind() {
    _viewModel.start();
    _userNameController
        .addListener(() => _viewModel.setUserName(_userNameController.text));
    _passwordController
        .addListener(() => _viewModel.setPassword(_passwordController.text));
    _viewModel.isUserLoggedInSuccessfullyStreamController.stream
        .listen((isSuccessfullyLoggedIn) {
      SchedulerBinding.instance.addPostFrameCallback((_) {
        _appPreferences.setIsUserLoggedIn();
        Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
      });
    });
    _isUserLoggedInCheck();
  }

  @override
  void initState() {
    _bind();
    super.initState();
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }

  bool isLoggedIn = false;
  Future<void> _isUserLoggedInCheck() async {
    _appPreferences.isUserLoggedIn().then((isUserLoggedIn) {
      if (isUserLoggedIn) {
        isLoggedIn = true;
      } else {
        isLoggedIn = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<FlowState>(
        stream: _viewModel.outputState,
        builder: (context, snapshot) {
          return snapshot.data?.getScreenWidget(context, _getContentWidget(),
                  () {
                _viewModel.login();
              }) ??
              _getContentWidget();
        },
      ),
    );
  }

  Widget _getContentWidget() {
    if (isLoggedIn == true) {
      return _getMyProfileContentWidget();
    } else {
      return _getLoginContentWidget();
    }
  }

  Widget _getMyProfileContentWidget() => Container();
  //TODO: create my profile widget

  Widget _getLoginContentWidget() {
    return SafeArea(
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: PaddingManager.p40,
                left: PaddingManager.p28,
                right: PaddingManager.p28,
              ),
              child: Text(
                StringsManager.enterPhoneNumberOrEmail,
                style: TextStyle(
                  fontFamily: FontConstants.fontFamily,
                  color: ColorManager.black,
                  fontWeight: FontWeight.w900,
                  fontSize: FontSize.s25,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingManager.p28,
                    right: PaddingManager.p28,
                  ),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outputIsUserNameValid,
                    builder: (context, snapshot) {
                      return TextFormField(
                        controller: _userNameController,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: StringsManager.emailOrTelephone,
                          hintStyle: TextStyle(
                            fontFamily: FontConstants.fontFamily,
                            color: ColorManager.lightGrey,
                            fontSize: FontSize.s14,
                            letterSpacing: SizeManager.s1,
                          ),
                          labelText: StringsManager.emailOrTelephone,
                          errorText: (snapshot.data ?? true)
                              ? null
                              : StringsManager.emailOrTelephoneError,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: SizeManager.s20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingManager.p28,
                    right: PaddingManager.p28,
                  ),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outputIsPasswordValid,
                    builder: (context, snapshot) {
                      return TextFormField(
                        controller: _passwordController,
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          hintText: StringsManager.password,
                          hintStyle: TextStyle(
                            fontFamily: FontConstants.fontFamily,
                            color: ColorManager.lightGrey,
                            fontSize: FontSize.s14,
                            letterSpacing: SizeManager.s1,
                          ),
                          labelText: StringsManager.password,
                          errorText: (snapshot.data ?? true)
                              ? null
                              : StringsManager.passwordError,
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingManager.p28,
                    right: PaddingManager.p28,
                  ),
                  child: StreamBuilder<bool>(
                    stream: _viewModel.outputIsUserNameValid,
                    builder: (context, snapshot) {
                      return SizedBox(
                        width: double.infinity,
                        height: SizeManager.s50,
                        child: ElevatedButton(
                          onPressed: (snapshot.data ?? false)
                              ? () {
                                  _viewModel.login();
                                }
                              : null,
                          child: const Text(
                            StringsManager.next,
                          ),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: SizeManager.s20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: PaddingManager.p28),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed(Routes.registerRoute);
                      },
                      child: Text(
                        StringsManager.newAcc,
                        style: TextStyle(
                          color: ColorManager.black,
                          fontSize: FontSize.s12,
                          fontFamily: FontConstants.fontFamily,
                        ),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: PaddingManager.p28),
                      child: Container(
                        width: SizeManager.s110,
                        height: SizeManager.s1,
                        color: ColorManager.lightGrey,
                      ),
                    ),
                    Text(
                      StringsManager.orIfYou,
                      style: TextStyle(
                        color: ColorManager.lightGrey,
                        fontSize: FontSize.s12,
                        fontFamily: FontConstants.fontFamily,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: PaddingManager.p28),
                      child: Container(
                        width: SizeManager.s110,
                        height: SizeManager.s1,
                        color: ColorManager.lightGrey,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: SizeManager.s40,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingManager.p28,
                    right: PaddingManager.p28,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: SizeManager.s50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.white,
                        foregroundColor: ColorManager.black,
                        side: BorderSide(
                          color: ColorManager.black,
                        ),
                      ),
                      onPressed: () {
                        //TODO sign in with apple
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: SizeManager.s20,
                            width: SizeManager.s20,
                            child: Image.asset(ImageManager.appleLogo),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: PaddingManager.p70),
                            child: Text(
                              StringsManager.cntWithApple,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: SizeManager.s20,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: PaddingManager.p28,
                    right: PaddingManager.p28,
                  ),
                  child: SizedBox(
                    width: double.infinity,
                    height: SizeManager.s50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: ColorManager.white,
                        foregroundColor: ColorManager.black,
                        side: BorderSide(
                          color: ColorManager.black,
                        ),
                      ),
                      onPressed: () {
                        //TODO sign in with facebook
                      },
                      child: Row(
                        children: [
                          SizedBox(
                            height: SizeManager.s20,
                            width: SizeManager.s20,
                            child: Image.asset(ImageManager.fbLogo),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: PaddingManager.p60),
                            child: Text(
                              StringsManager.cntWtihFb,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              height: SizeManager.s110,
              color: ColorManager.veryLighGrey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    StringsManager.privacyPolicyText1,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorManager.black,
                      fontFamily: FontConstants.fontFamily,
                      fontSize: FontSize.s10,
                    ),
                  ),
                  Text(
                    StringsManager.privacyPolicyText2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: ColorManager.black,
                      fontFamily: FontConstants.fontFamily,
                      fontSize: FontSize.s10,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
