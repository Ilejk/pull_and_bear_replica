import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';

abstract class FlowState {
  StateRendererType getStateRenderType();
  String getMessage();
}

class LoadingState extends FlowState {
  StateRendererType stateRendererType;
  String message;

  LoadingState({
    required this.stateRendererType,
    String? message,
  }) : message = message ?? StringsManager.loading;

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRenderType() => stateRendererType;
}

class ErrorState extends FlowState {
  StateRendererType stateRendererType;
  String message;

  ErrorState(this.stateRendererType, this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRenderType() => stateRendererType;
}

class ContentState extends FlowState {
  ContentState();

  @override
  String getMessage() => Constants.empty;

  @override
  StateRendererType getStateRenderType() =>
      StateRendererType.contentScreenState;
}

class EmptyState extends FlowState {
  String message;

  EmptyState(this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRenderType() => StateRendererType.emptyScreenState;
}

class SuccessState extends FlowState {
  String message;
  SuccessState(this.message);

  @override
  String getMessage() => message;

  @override
  StateRendererType getStateRenderType() => StateRendererType.popUpSuccess;
}

extension FlowStateExtension on FlowState {
  Widget getScreenWidget(BuildContext context, Widget contentScreenWidget,
      Function retryActionFunction) {
    switch (runtimeType) {
      case LoadingState:
        {
          if (getStateRenderType() == StateRendererType.popUpLoadingState) {
            showPopUp(
              context,
              getStateRenderType(),
              getMessage(),
            );
            return contentScreenWidget;
          } else {
            return StateRenderer(
              stateRenderType: getStateRenderType(),
              retryActionFunction: retryActionFunction,
              message: getMessage(),
            );
          }
        }
      case ErrorState:
        {
          if (getStateRenderType() == StateRendererType.popUpErrorState) {
            showPopUp(
              context,
              getStateRenderType(),
              getMessage(),
            );
            return contentScreenWidget;
          } else {
            return StateRenderer(
              stateRenderType: getStateRenderType(),
              retryActionFunction: retryActionFunction,
              message: getMessage(),
            );
          }
        }
      case ContentState:
        {
          dismissDialog(context);
          return contentScreenWidget;
        }
      case EmptyState:
        {
          return StateRenderer(
            stateRenderType: getStateRenderType(),
            retryActionFunction: retryActionFunction,
            message: getMessage(),
          );
        }
      case SuccessState:
        {
          dismissDialog(context);
          showPopUp(context, StateRendererType.popUpSuccess, getMessage(),
              title: StringsManager.success);
          return contentScreenWidget;
        }
      default:
        {
          return contentScreenWidget;
        }
    }
  }

  dismissDialog(BuildContext context) {
    if (_isThereCurrentDialogShowing(context)) {
      Navigator.of(context, rootNavigator: true).pop(true);
    }
  }

  _isThereCurrentDialogShowing(BuildContext context) =>
      ModalRoute.of(context)?.isCurrent != true;

  showPopUp(
      BuildContext context, StateRendererType stateRendererType, String message,
      {String title = Constants.empty}) {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => showDialog(
        context: context,
        builder: (BuildContext context) => StateRenderer(
          stateRenderType: stateRendererType,
          retryActionFunction: () {},
          message: message,
          title: title,
        ),
      ),
    );
  }
}
