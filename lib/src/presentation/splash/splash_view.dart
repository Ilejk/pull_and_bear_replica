import 'dart:async';
import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/assets_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/routes_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;
  void _startDelay() {
    _timer = Timer(const Duration(seconds: DurationManager.s2), _goNext);
  }

  Future<void> _goNext() async {
    Navigator.of(context).pushReplacementNamed(Routes.mainRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: SizeManager.s100,
                width: SizeManager.s250,
                child: Image.asset(ImageManager.splashLogo),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(PaddingManager.p8),
                    child: CircularProgressIndicator(
                      color: ColorManager.black,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(PaddingManager.p8),
                    child: Text(StringsManager.loading),
                  )
                ],
              ),
              const SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
