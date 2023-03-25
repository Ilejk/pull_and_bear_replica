import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pull_and_bear_replica/src/app/app_preferences.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/login/login_view_model.dart';
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

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: StreamBuilder<FlowState>(
          stream: _viewModel.outputState,
          builder: (context, snapshot) {
            return snapshot.data?.getScreenWidget(context, _getContentWidget(),
                    () {
                  _viewModel.login();
                }) ??
                Container();
          },
        ),
      ),
    );
  }

  Widget _getContentWidget() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
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
                      hintText: StringsManager.username,
                      labelText: StringsManager.username,
                      errorText: (snapshot.data ?? true)
                          ? null
                          : StringsManager.usernameError,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(
              height: SizeManager.s28,
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
              height: SizeManager.s28,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: PaddingManager.p28,
                right: PaddingManager.p28,
              ),
              child: StreamBuilder<bool>(
                stream: _viewModel.outputIsAllInputValid,
                builder: (context, snapshot) {
                  return SizedBox(
                    width: double.infinity,
                    height: SizeManager.s40,
                    child: ElevatedButton(
                      onPressed: (snapshot.data ?? false)
                          ? () {
                              _viewModel.login();
                            }
                          : null,
                      child: const Text(
                        StringsManager.login,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
