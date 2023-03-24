import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/main/home/home_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeViewModel _viewModel = instance<HomeViewModel>();
  @override
  void initState() {
    _bind();
    super.initState();
  }

  _bind() {
    _viewModel.start();
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
                  _viewModel.start();
                }) ??
                Container();
          },
        ),
      ),
    );
  }

  Widget _getContentWidget() {
    return StreamBuilder<HomeViewObject>(
      stream: _viewModel.outputHomeData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getNewWidget(snapshot.data?.news),
            _getMidSeasonWidget(snapshot.data?.midSeason),
            _getHollywoodWidget(snapshot.data?.hollywood),
            _getJeansWidget(snapshot.data?.jeans),
            _getTShritsWidget(snapshot.data?.tShirts),
            _getFanCornerWidget(snapshot.data?.fanCorner),
            _getCommunityWidget(snapshot.data?.community),
          ],
        );
      },
    );
  }

  Widget _getNewWidget(List<News>? news) {
    if (news != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: news
                .map((news) => Image.network(
                      news.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getMidSeasonWidget(List<MidSeason>? midSeason) {
    if (midSeason != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: midSeason
                .map((midSeason) => Image.network(
                      midSeason.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getHollywoodWidget(List<Hollywood>? hollywood) {
    if (hollywood != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: hollywood
                .map((hollywood) => Image.network(
                      hollywood.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getJeansWidget(List<Jeans>? jeans) {
    if (jeans != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: jeans
                .map((jeans) => Image.network(
                      jeans.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getTShritsWidget(List<TShirts>? tShirt) {
    if (tShirt != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: tShirt
                .map((tShirt) => Image.network(
                      tShirt.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getFanCornerWidget(List<FanCorner>? fanCorner) {
    if (fanCorner != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: fanCorner
                .map((fanCorner) => Image.network(
                      fanCorner.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getCommunityWidget(List<Community>? community) {
    if (community != null) {
      return Padding(
        padding: const EdgeInsets.only(
          left: PaddingManager.p12,
          right: PaddingManager.p12,
        ),
        child: Container(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: community
                .map((community) => Image.network(
                      community.image,
                      fit: BoxFit.cover,
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }
}
