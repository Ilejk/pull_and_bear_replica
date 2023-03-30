import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pull_and_bear_replica/src/app/directory_implementer.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';
import 'package:pull_and_bear_replica/src/presentation/common/state_renderer/state_renderer_implementer.dart';
import 'package:pull_and_bear_replica/src/presentation/main/home/home_view_model.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/colors_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/font_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/strings_manager.dart';
import 'package:pull_and_bear_replica/src/presentation/resources/values_manager.dart';

// ignore: must_be_immutable
class HomePage extends StatefulWidget {
  bool index;
  HomePage(this.index, {super.key});

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
            return snapshot.data?.getScreenWidget(
                    context,
                    widget.index == true
                        ? _getContentManWidget()
                        : _getContentWomanWidget(), () {
                  _viewModel.start();
                }) ??
                Container();
          },
        ),
      ),
    );
  }

  Widget _getContentManWidget() {
    return StreamBuilder<HomeViewObject>(
      stream: _viewModel.outputHomeData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getNewWidget(snapshot.data?.news),
            _getFreeReturnSpacerWidget(),
            _getMidSeasonWidget(snapshot.data?.midSeason),
            _getHollywoodWidget(snapshot.data?.hollywood),
            _getJeansWidget(snapshot.data?.jeans),
            _getTShritsWidget(snapshot.data?.tShirts),
            _getFanCornerWidget(snapshot.data?.fanCorner),
            _getFanCornerSpacerWidget(),
            _getCommunityInfoSpacerWidget(),
            _getCommunityWidget(snapshot.data?.community),
            _getCommunityJoinButton(),
            _getNewsLetterWidget(),
          ],
        );
      },
    );
  }

  Widget _getContentWomanWidget() {
    return StreamBuilder<HomeViewObject>(
      stream: _viewModel.outputHomeData,
      builder: (context, snapshot) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _getNewWomanWidget(snapshot.data?.newWomanHome),
            _getFreeReturnSpacerWidget(),
            _getMidSeasonWidget(snapshot.data?.midSeason),
            _getBikinsWidget(snapshot.data?.bikinisWomanHome),
            _getDenimWidget(snapshot.data?.denimWomanHome),
            _getAccessoriesWidget(snapshot.data?.accessoriesWomanHome),
            _getCommunityInfoSpacerWidget(),
            _getCommunityWidget(snapshot.data?.community),
            _getCommunityJoinButton(),
            _getNewsLetterWidget(),
          ],
        );
      },
    );
  }

  Widget _getNewWomanWidget(List<NewWomanHome>? newWomanHome) {
    if (newWomanHome != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: PaddingManager.p18),
          child: SizedBox(
            width: double.infinity,
            height: SizeManager.s700,
            child: CarouselSlider(
              items: newWomanHome
                  .map((newWomanHome) => SizedBox(
                        width: SizeManager.s450,
                        child: Image.network(
                          newWomanHome.image,
                          fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: SizeManager.s700,
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                viewportFraction: SizeManager.s1,
                autoPlayInterval: const Duration(
                  seconds: DurationManager.s6,
                ),
              ),
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getBikinsWidget(List<BikinisWomanHome>? bikinisWomanHome) {
    if (bikinisWomanHome != null) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s700,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: bikinisWomanHome
                .map((bikinisWomanHome) => SizedBox(
                      width: SizeManager.s500,
                      child: Image.network(
                        bikinisWomanHome.image,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getDenimWidget(List<DenimWomanHome>? denimWomanHome) {
    if (denimWomanHome != null) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s700,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: denimWomanHome
                .map((denimWomanHome) => SizedBox(
                      width: SizeManager.s500,
                      child: Image.network(
                        denimWomanHome.image,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getAccessoriesWidget(
      List<AccessoriesWomanHome>? accessoriesWomanHome) {
    if (accessoriesWomanHome != null) {
      return Padding(
        padding: const EdgeInsets.only(
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s700,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: accessoriesWomanHome
                .map((accessoriesWomanHome) => SizedBox(
                      width: SizeManager.s500,
                      child: Image.network(
                        accessoriesWomanHome.image,
                        fit: BoxFit.cover,
                      ),
                    ))
                .toList(),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getFreeReturnSpacerWidget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: PaddingManager.p18),
      child: Container(
        height: SizeManager.s40,
        width: double.infinity,
        color: ColorManager.black,
        child: Center(
            child: Text(
          StringsManager.freeReturns,
          style: Theme.of(context).textTheme.headline5,
        )),
      ),
    );
  }

  Widget _getFanCornerSpacerWidget() {
    return Padding(
      padding: const EdgeInsets.only(bottom: PaddingManager.p18),
      child: Container(
        height: SizeManager.s60,
        width: double.infinity,
        color: ColorManager.white,
        child: Column(
          children: [
            Center(
              child: Text(
                StringsManager.fanCornerSpacer,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            Center(
              child: InkWell(
                onTap: () {
                  print('shop');
                  //TODO: implement on tap
                },
                child: Text(
                  StringsManager.shop,
                  style: TextStyle(
                    color: ColorManager.black,
                    fontWeight: FontWeight.w600,
                    fontSize: FontSize.s16,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getCommunityInfoSpacerWidget() {
    return Container(
      height: SizeManager.s80,
      width: double.infinity,
      color: ColorManager.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              StringsManager.pAbCommunity,
              style: TextStyle(
                color: ColorManager.white,
                fontWeight: FontWeight.w900,
                fontSize: FontSize.s20,
                letterSpacing: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: PaddingManager.p12,
              left: PaddingManager.p12,
              right: PaddingManager.p12,
            ),
            child: Center(
              child: Text(
                StringsManager.pAbCommunityInfo,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: ColorManager.white,
                  fontWeight: FontWeight.w900,
                  fontSize: FontSize.s11,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getCommunityJoinButton() {
    return Container(
      height: SizeManager.s80,
      width: double.infinity,
      color: ColorManager.black,
      child: InkWell(
        onTap: () {
          print('join');
          //TODO: implement on tap
        },
        child: Center(
          child: Container(
            height: SizeManager.s40,
            width: SizeManager.s180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeManager.s5),
              color: ColorManager.black,
              border: Border.all(
                color: ColorManager.white,
                width: SizeManager.s0_7,
              ),
            ),
            child: Center(
              child: Text(
                StringsManager.join,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _getNewsLetterWidget() {
    return Padding(
      padding: const EdgeInsets.only(top: PaddingManager.p18),
      child: Container(
        width: double.infinity,
        height: SizeManager.s400,
        color: ColorManager.lightGreen,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              StringsManager.newsLetterText1,
              style: TextStyle(
                color: ColorManager.black,
                fontSize: FontSize.s27,
                fontWeight: FontWeight.w800,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              StringsManager.newsLetterText2,
              style: TextStyle(
                color: ColorManager.black,
                fontSize: FontSize.s18,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
            InkWell(
              onTap: () {
                print('im in');
                //TODO: implement on tap
              },
              child: Center(
                child: Container(
                  height: SizeManager.s40,
                  width: SizeManager.s180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(SizeManager.s5),
                    color: ColorManager.black,
                    border: Border.all(
                      color: ColorManager.black,
                      width: SizeManager.s0_7,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      StringsManager.imIn,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getNewWidget(List<News>? news) {
    if (news != null) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(bottom: PaddingManager.p18),
          child: SizedBox(
            width: double.infinity,
            height: SizeManager.s700,
            child: CarouselSlider(
              items: news
                  .map((news) => SizedBox(
                        width: SizeManager.s450,
                        child: Image.network(
                          news.image,
                          fit: BoxFit.cover,
                        ),
                      ))
                  .toList(),
              options: CarouselOptions(
                height: SizeManager.s700,
                autoPlay: true,
                enableInfiniteScroll: true,
                enlargeCenterPage: true,
                viewportFraction: 1,
                autoPlayInterval: const Duration(
                  seconds: DurationManager.s6,
                ),
              ),
            ),
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
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s250,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: midSeason
                .map((midSeason) => SizedBox(
                      width: SizeManager.s440,
                      child: Image.network(
                        midSeason.image,
                        fit: BoxFit.cover,
                      ),
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
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s700,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: hollywood
                .map((hollywood) => SizedBox(
                      width: SizeManager.s1100,
                      child: Image.network(
                        hollywood.image,
                        fit: BoxFit.cover,
                      ),
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
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s700,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: jeans
                .map((jeans) => SizedBox(
                      width: SizeManager.s1100,
                      child: Image.network(
                        jeans.image,
                        fit: BoxFit.cover,
                      ),
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
          bottom: PaddingManager.p18,
        ),
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s700,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: tShirt
                .map((tShirt) => SizedBox(
                      width: SizeManager.s700,
                      child: Image.network(
                        tShirt.image,
                        fit: BoxFit.cover,
                      ),
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
        child: SizedBox(
          width: double.infinity,
          height: SizeManager.s500,
          child: CarouselSlider(
            items: fanCorner
                .map(
                  (fanCorner) => Image.network(
                    fanCorner.image,
                    fit: BoxFit.cover,
                  ),
                )
                .toList(),
            options: CarouselOptions(
              height: SizeManager.s500,
              autoPlay: false,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
            ),
          ),
        ),
      );
    } else {
      return Container();
    }
  }

  Widget _getCommunityWidget(List<Community>? community) {
    if (community != null) {
      return Container(
        width: double.infinity,
        height: SizeManager.s450,
        color: ColorManager.black,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: community
              .map((community) => SizedBox(
                    height: SizeManager.s350,
                    width: SizeManager.s250,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: PaddingManager.p2,
                        right: PaddingManager.p2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.network(
                            community.image,
                            fit: BoxFit.cover,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: PaddingManager.p8),
                            child: Text(
                              community.title,
                              style: Theme.of(context).textTheme.headline5,
                            ),
                          )
                        ],
                      ),
                    ),
                  ))
              .toList(),
        ),
      );
    } else {
      return Container();
    }
  }

  @override
  void dispose() {
    _viewModel.dispose();
    super.dispose();
  }
}
