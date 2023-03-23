import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/assets_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/styles_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

enum StateRendererType {
  popUpLoadingState,
  popUpErrorState,
  popUpSuccess,
  fullScreenLoadingState,
  fullScreenErrorState,
  contentScreenState,
  emptyScreenState,
}

// ignore: must_be_immutable
class StateRenderer extends StatelessWidget {
  StateRendererType stateRenderType;

  String message;
  String title;
  Function? retryActionFunction;

  StateRenderer({
    Key? key,
    required this.stateRenderType,
    String? message,
    String? title,
    required this.retryActionFunction,
  })  : message = message ?? StringsManager.loading,
        title = title ?? Constants.empty,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return _getStateWidget(context);
  }

  Widget _getStateWidget(BuildContext context) {
    switch (stateRenderType) {
      case StateRendererType.popUpLoadingState:
        return _getPopUpDialog(
          context,
          [
            _getAnimatedImage(JsonAssetsManager.loading),
          ],
        );
      case StateRendererType.popUpErrorState:
        return _getPopUpDialog(
          context,
          [
            _getAnimatedImage(JsonAssetsManager.error),
            _getMessage(message),
            _getRetryButton(
              StringsManager.ok,
              context,
            ),
          ],
        );
      case StateRendererType.popUpSuccess:
        return _getPopUpDialog(
          context,
          [
            _getAnimatedImage(JsonAssetsManager.success),
            _getMessage(title),
            _getMessage(message),
            _getRetryButton(
              StringsManager.ok,
              context,
            ),
          ],
        );
      case StateRendererType.fullScreenLoadingState:
        return _getItemsInColumn(
          [
            _getAnimatedImage(JsonAssetsManager.loading),
            _getMessage(message),
          ],
        );
      case StateRendererType.fullScreenErrorState:
        return _getItemsInColumn(
          [
            _getAnimatedImage(JsonAssetsManager.error),
            _getMessage(message),
            _getRetryButton(
              StringsManager.tryAgain,
              context,
            ),
          ],
        );
      case StateRendererType.contentScreenState:
        return Container();
      case StateRendererType.emptyScreenState:
        return _getItemsInColumn(
          [
            _getAnimatedImage(JsonAssetsManager.empty),
            _getMessage(message),
          ],
        );
      default:
        return Container();
    }
  }

  Widget _getPopUpDialog(BuildContext context, List<Widget> children) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(SizeManager.s14),
      ),
      elevation: SizeManager.s1_5,
      backgroundColor: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          color: ColorManager.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(SizeManager.s14),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: SizeManager.s12,
              offset: Offset(SizeManager.s0, SizeManager.s12),
            ),
          ],
        ),
        child: _getDialogContent(context, children),
      ),
    );
  }

  Widget _getDialogContent(BuildContext context, List<Widget> children) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }

  Widget _getAnimatedImage(String animationName) {
    return SizedBox(
      height: SizeManager.s100,
      width: SizeManager.s100,
      child: Lottie.asset(animationName),
    );
  }

  Widget _getMessage(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p18),
        child: Text(
          message,
          style: getMediumTextStyle(
            color: ColorManager.black,
            fontSize: FontSize.s16,
          ),
        ),
      ),
    );
  }

  Widget _getRetryButton(String buttonTitle, BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(PaddingManager.p18),
        child: SizedBox(
          width: SizeManager.s180,
          child: ElevatedButton(
              onPressed: () {
                if (stateRenderType == StateRendererType.fullScreenErrorState) {
                  retryActionFunction?.call();
                } else {
                  Navigator.of(context).pop();
                }
              },
              child: Text(buttonTitle)),
        ),
      ),
    );
  }

  Widget _getItemsInColumn(List<Widget> children) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: children,
    );
  }
}
