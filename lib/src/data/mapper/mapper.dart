import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/app/extensions.dart';
import 'package:pull_and_bear_replica/src/data/responses/responses.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';

extension NewResponseMapper on NewResponse? {
  News toDomain() {
    return News(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension MidSeasonResponseMapper on MidSeasonResponse? {
  MidSeason toDomain() {
    return MidSeason(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension HollywoodResponseMapper on HollywoodResponse? {
  Hollywood toDomain() {
    return Hollywood(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension JeansResponseMapper on JeansResponse? {
  Jeans toDomain() {
    return Jeans(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension TShirtsResponseMapper on TShirtsResponse? {
  TShirts toDomain() {
    return TShirts(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension FanCornerResponseMapper on FanCornerResponse? {
  FanCorner toDomain() {
    return FanCorner(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension CommunityResponseMapper on CommunityResponse? {
  Community toDomain() {
    return Community(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension NewWomanHomeMapper on NewWomanHomeResponse? {
  NewWomanHome toDomain() {
    return NewWomanHome(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension BikinisWomanHomeMapper on BikinisResponse? {
  BikinisWomanHome toDomain() {
    return BikinisWomanHome(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension DenimWomanHomeMapper on DenimHomeResponse? {
  DenimWomanHome toDomain() {
    return DenimWomanHome(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension AccessoriesWomanHomeMapper on AccessoriesWomanHomeResponse? {
  AccessoriesWomanHome toDomain() {
    return AccessoriesWomanHome(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension HomeResponseMapper on HomeResponse? {
  HomeObject toDomain() {
    List<News> mappedNews =
        (this?.data?.news?.map((mappedNews) => mappedNews.toDomain()) ??
                const Iterable.empty())
            .cast<News>()
            .toList();
    List<MidSeason> mappedMidSeason = (this
                ?.data
                ?.midseason
                ?.map((mappedMidSeason) => mappedMidSeason.toDomain()) ??
            const Iterable.empty())
        .cast<MidSeason>()
        .toList();
    List<Hollywood> mappedHollywood = (this
                ?.data
                ?.hollywood
                ?.map((mappedHollywood) => mappedHollywood.toDomain()) ??
            const Iterable.empty())
        .cast<Hollywood>()
        .toList();
    List<Jeans> mappedJeans =
        (this?.data?.jeans?.map((mappedJeans) => mappedJeans.toDomain()) ??
                const Iterable.empty())
            .cast<Jeans>()
            .toList();
    List<TShirts> mappedTShirts = (this
                ?.data
                ?.tshirts
                ?.map((mappedTShirts) => mappedTShirts.toDomain()) ??
            const Iterable.empty())
        .cast<TShirts>()
        .toList();
    List<FanCorner> mappedFanCorner = (this
                ?.data
                ?.fancorner
                ?.map((mappedFanCorner) => mappedFanCorner.toDomain()) ??
            const Iterable.empty())
        .cast<FanCorner>()
        .toList();
    List<Community> mappedCommunity = (this
                ?.data
                ?.community
                ?.map((mappedCommunity) => mappedCommunity.toDomain()) ??
            const Iterable.empty())
        .cast<Community>()
        .toList();
    List<NewWomanHome> mappedNewWomanHome = (this
                ?.data
                ?.newWoman
                ?.map((mappedNewWomanHome) => mappedNewWomanHome.toDomain()) ??
            const Iterable.empty())
        .cast<NewWomanHome>()
        .toList();
    List<BikinisWomanHome> mappedBikinisWomanHome = (this?.data?.bikinis?.map(
                (mappedBikinisWomanHome) =>
                    mappedBikinisWomanHome.toDomain()) ??
            const Iterable.empty())
        .cast<BikinisWomanHome>()
        .toList();
    List<DenimWomanHome> mappedDenimWomanHome = (this?.data?.denim?.map(
                (mappedDenimWomanHome) => mappedDenimWomanHome.toDomain()) ??
            const Iterable.empty())
        .cast<DenimWomanHome>()
        .toList();
    List<AccessoriesWomanHome> mappedAccessoriesWomanHome = (this
                ?.data
                ?.accessories
                ?.map((mappedAccessoriesWomanHome) =>
                    mappedAccessoriesWomanHome.toDomain()) ??
            const Iterable.empty())
        .cast<AccessoriesWomanHome>()
        .toList();

    var data = HomeData(
      mappedNews,
      mappedMidSeason,
      mappedHollywood,
      mappedJeans,
      mappedTShirts,
      mappedFanCorner,
      mappedCommunity,
      mappedNewWomanHome,
      mappedBikinisWomanHome,
      mappedDenimWomanHome,
      mappedAccessoriesWomanHome,
    );
    return HomeObject(data);
  }
}

extension AuthResponseMapper on AuthResponse? {
  Auth toDomain() {
    return Auth(this!.customer.toDomain(), this!.contacts.toDomain());
  }
}

extension CustomerResponseMapper on CustomerRespose? {
  Customer toDomain() {
    return Customer(
      this?.id?.orEmpty() ?? Constants.empty,
      this?.name?.orEmpty() ?? Constants.empty,
      this?.numOfNotifications?.orZero() ?? Constants.zero,
    );
  }
}

extension ContactsResponseMapper on ContactResponse? {
  Contacts toDomain() {
    return Contacts(
      this?.email?.orEmpty() ?? Constants.empty,
      this?.phone?.orEmpty() ?? Constants.empty,
      this?.link?.orEmpty() ?? Constants.empty,
    );
  }
}

extension NewManMenuResponseMapper on NewManMenuResponse? {
  NewMan toDomain() {
    return NewMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension MidSeasonManMenuResponseMapper on MidSeasonManMenuResponse? {
  MidSeasonMan toDomain() {
    return MidSeasonMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ClothingManMenuResponseMapper on ClothingManMenuResponse? {
  ClothingMan toDomain() {
    return ClothingMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension SwimWearManMenuResponseMapper on SwimWearManMenuResponse? {
  SwimWearMan toDomain() {
    return SwimWearMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension JeansManMenuResponseMapper on JeansManMenuResponse? {
  JeansMan toDomain() {
    return JeansMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ShoesManMenuResponseMapper on ShoesManMenuResponse? {
  ShoesMan toDomain() {
    return ShoesMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension AccessoriesManMenuResponseMapper on AccessoriesManMenuResponse? {
  AccessoriesMan toDomain() {
    return AccessoriesMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension BagsManMenuResponseMapper on BagsManMenuResponse? {
  BagsMan toDomain() {
    return BagsMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension LicensedManMenuResponseMapper on LicensedManMenuResponse? {
  LicensedMan toDomain() {
    return LicensedMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension StwdManMenuResponseMapper on StwdManMenuResponse? {
  StwdMan toDomain() {
    return StwdMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension BasicsManMenuResponseMapper on BasicsManMenuResponse? {
  BasicsMan toDomain() {
    return BasicsMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension UnisexManMenuResponseMapper on UnisexManMenuResponse? {
  UnisexMan toDomain() {
    return UnisexMan(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension NewWomanMenuResponseMapper on NewWomanMenuResponse? {
  NewWoman toDomain() {
    return NewWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension MidSeasonWomanMenuResponseMapper on MidSeasonWomanMenuResponse? {
  MidSeasonWoman toDomain() {
    return MidSeasonWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ClothingWomanMenuResponseMapper on ClothingWomanMenuResponse? {
  ClothingWoman toDomain() {
    return ClothingWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension BikinisWomanMenuResponseMapper on BikinsWomanMenuResponse? {
  BikinisWoman toDomain() {
    return BikinisWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension DenimWomanMenuResponseMapper on DenimWomanMenuResponse? {
  DenimWoman toDomain() {
    return DenimWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ShoesWomanMenuResponseMapper on ShoesWomanMenuResponse? {
  ShoesWoman toDomain() {
    return ShoesWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension BagsWomanMenuResponseMapper on BagsWomanMenuResponse? {
  BagsWoman toDomain() {
    return BagsWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension AccessoriesWomanMenuResponseMapper on AccessoriesWomanMenuResponse? {
  AccessoriesWoman toDomain() {
    return AccessoriesWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension EqualsWomanMenuResponseMapper on EqualsWomanMenuResponse? {
  EqualsWoman toDomain() {
    return EqualsWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ExclusiveWomanMenuResponseMapper on ExclusiveWomanMenuResponse? {
  ExclusiveWoman toDomain() {
    return ExclusiveWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension PacificWomanMenuResponseMapper on PacificWomanMenuResponse? {
  PacificWoman toDomain() {
    return PacificWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension UnisexWomanMenuResponseMapper on UnisexWomanMenuResponse? {
  UnisexWoman toDomain() {
    return UnisexWoman(
      this?.id?.orZero() ?? Constants.zero,
      this?.title?.orEmpty() ?? Constants.empty,
      this?.image?.orEmpty() ?? Constants.empty,
    );
  }
}

extension MenuResponseMapper on MenuResponse? {
  MenuObject toDomain() {
    List<NewMan> mappedNewMan =
        (this?.data?.newMan?.map((mappedNewMan) => mappedNewMan.toDomain()) ??
                const Iterable.empty())
            .cast<NewMan>()
            .toList();
    List<MidSeasonMan> mappedMidSeasonMan = (this
                ?.data
                ?.midseasonMan
                ?.map((mappedMidSeasonMan) => mappedMidSeasonMan.toDomain()) ??
            const Iterable.empty())
        .cast<MidSeasonMan>()
        .toList();
    List<ClothingMan> mappedClothingMan = (this
                ?.data
                ?.clothingMan
                ?.map((mappedClothingMan) => mappedClothingMan.toDomain()) ??
            const Iterable.empty())
        .cast<ClothingMan>()
        .toList();
    List<SwimWearMan> mappedSwimWearMan = (this
                ?.data
                ?.swinwearMan
                ?.map((mappedSwimWearMan) => mappedSwimWearMan.toDomain()) ??
            const Iterable.empty())
        .cast<SwimWearMan>()
        .toList();
    List<JeansMan> mappedJeansMan = (this
                ?.data
                ?.jeansMan
                ?.map((mappedJeansMan) => mappedJeansMan.toDomain()) ??
            const Iterable.empty())
        .cast<JeansMan>()
        .toList();
    List<ShoesMan> mappedShoesMan = (this
                ?.data
                ?.shoesMan
                ?.map((mappedShoesMan) => mappedShoesMan.toDomain()) ??
            const Iterable.empty())
        .cast<ShoesMan>()
        .toList();
    List<AccessoriesMan> mappedAccessoriesMan = (this
                ?.data
                ?.accessoriesMan
                ?.map((mappedAccessoriesMan) =>
                    mappedAccessoriesMan.toDomain()) ??
            const Iterable.empty())
        .cast<AccessoriesMan>()
        .toList();
    List<BagsMan> mappedBagsMan = (this
                ?.data
                ?.bagsMan
                ?.map((mappedBagsMan) => mappedBagsMan.toDomain()) ??
            const Iterable.empty())
        .cast<BagsMan>()
        .toList();
    List<LicensedMan> mappedLicensedMan = (this
                ?.data
                ?.licensedMan
                ?.map((mappedLicensedMan) => mappedLicensedMan.toDomain()) ??
            const Iterable.empty())
        .cast<LicensedMan>()
        .toList();
    List<StwdMan> mappedStwdMan = (this
                ?.data
                ?.stwdMan
                ?.map((mappedStwdMan) => mappedStwdMan.toDomain()) ??
            const Iterable.empty())
        .cast<StwdMan>()
        .toList();
    List<BasicsMan> mappedBasicsMan = (this
                ?.data
                ?.basicsMan
                ?.map((mappedBasicsMan) => mappedBasicsMan.toDomain()) ??
            const Iterable.empty())
        .cast<BasicsMan>()
        .toList();
    List<UnisexMan> mappedUnisexMan = (this
                ?.data
                ?.unisexMan
                ?.map((mappedUnisexMan) => mappedUnisexMan.toDomain()) ??
            const Iterable.empty())
        .cast<UnisexMan>()
        .toList();

    List<NewWoman> mappedNewWoman = (this
                ?.data
                ?.newWoman
                ?.map((mappedNewWoman) => mappedNewWoman.toDomain()) ??
            const Iterable.empty())
        .cast<NewWoman>()
        .toList();
    List<MidSeasonWoman> mappedMidSeasonWoman = (this
                ?.data
                ?.midseasonWoman
                ?.map((mappedMidSeasonWoman) =>
                    mappedMidSeasonWoman.toDomain()) ??
            const Iterable.empty())
        .cast<MidSeasonWoman>()
        .toList();
    List<ClothingWoman> mappedClothingWoman = (this?.data?.clothingWoman?.map(
                (mappedClothingWoman) => mappedClothingWoman.toDomain()) ??
            const Iterable.empty())
        .cast<ClothingWoman>()
        .toList();
    List<BikinisWoman> mappedBikinisWoman = (this
                ?.data
                ?.bikinisWoman
                ?.map((mappedBikinisWoman) => mappedBikinisWoman.toDomain()) ??
            const Iterable.empty())
        .cast<BikinisWoman>()
        .toList();
    List<DenimWoman> mappedDenimWoman = (this
                ?.data
                ?.denimWoman
                ?.map((mappedDenimWoman) => mappedDenimWoman.toDomain()) ??
            const Iterable.empty())
        .cast<DenimWoman>()
        .toList();
    List<ShoesWoman> mappedShoesWoman = (this
                ?.data
                ?.shoesWoman
                ?.map((mappedShoesWoman) => mappedShoesWoman.toDomain()) ??
            const Iterable.empty())
        .cast<ShoesWoman>()
        .toList();
    List<BagsWoman> mappedBagsWoman = (this
                ?.data
                ?.bagsWoman
                ?.map((mappedBagsWoman) => mappedBagsWoman.toDomain()) ??
            const Iterable.empty())
        .cast<BagsWoman>()
        .toList();
    List<AccessoriesWoman> mappedAccessoriesWoman = (this
                ?.data
                ?.accessoriesWoman
                ?.map((mappedAccessoriesWoman) =>
                    mappedAccessoriesWoman.toDomain()) ??
            const Iterable.empty())
        .cast<AccessoriesWoman>()
        .toList();
    List<EqualsWoman> mappedEqualsWoman = (this
                ?.data
                ?.equalsWoman
                ?.map((mappedEqualsWoman) => mappedEqualsWoman.toDomain()) ??
            const Iterable.empty())
        .cast<EqualsWoman>()
        .toList();
    List<ExclusiveWoman> mappedExclusiveWoman = (this
                ?.data
                ?.exclusiveWoman
                ?.map((mappedExclusiveWoman) =>
                    mappedExclusiveWoman.toDomain()) ??
            const Iterable.empty())
        .cast<ExclusiveWoman>()
        .toList();
    List<PacificWoman> mappedPacificWoman = (this
                ?.data
                ?.pacificWoman
                ?.map((mappedPacificWoman) => mappedPacificWoman.toDomain()) ??
            const Iterable.empty())
        .cast<PacificWoman>()
        .toList();
    List<UnisexWoman> mappedUnisexWoman = (this
                ?.data
                ?.unisexWoman
                ?.map((mappedUnisexWoman) => mappedUnisexWoman.toDomain()) ??
            const Iterable.empty())
        .cast<UnisexWoman>()
        .toList();

    var data = MenuData(
      mappedAccessoriesMan,
      mappedAccessoriesWoman,
      mappedBagsMan,
      mappedBagsWoman,
      mappedBasicsMan,
      mappedBikinisWoman,
      mappedClothingMan,
      mappedClothingWoman,
      mappedDenimWoman,
      mappedEqualsWoman,
      mappedExclusiveWoman,
      mappedJeansMan,
      mappedLicensedMan,
      mappedMidSeasonMan,
      mappedMidSeasonWoman,
      mappedNewMan,
      mappedNewWoman,
      mappedPacificWoman,
      mappedShoesMan,
      mappedShoesWoman,
      mappedStwdMan,
      mappedSwimWearMan,
      mappedUnisexMan,
      mappedUnisexWoman,
    );
    return MenuObject(data);
  }
}

extension ManNew1Mapper on ManMenuNew1Response? {
  ManNew1 toDomain() {
    return ManNew1(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.image4?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension ManNew2Mapper on ManMenuNew2Response? {
  ManNew2 toDomain() {
    return ManNew2(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension ManNew3Mapper on ManMenuNew3Response? {
  ManNew3 toDomain() {
    return ManNew3(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.title2?.orEmpty() ?? Constants.empty,
      this?.title3?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
      this?.price2?.orZeroD() ?? Constants.zeroD,
      this?.price3?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension ManNew4Mapper on ManMenuNew4Response? {
  ManNew4 toDomain() {
    return ManNew4(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension ManNew5Mapper on ManMenuNew5Response? {
  ManNew5 toDomain() {
    return ManNew5(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension ManNew6Mapper on ManMenuNew6Response? {
  ManNew6 toDomain() {
    return ManNew6(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.title2?.orEmpty() ?? Constants.empty,
      this?.title3?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
      this?.price2?.orZeroD() ?? Constants.zeroD,
      this?.price3?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension WomanNew1Mapper on WomanMenuNew1Response? {
  WomanNew1 toDomain() {
    return WomanNew1(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.image4?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension WomanNew2Mapper on WomanMenuNew2Response? {
  WomanNew2 toDomain() {
    return WomanNew2(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension WomanNew3Mapper on WomanMenuNew3Response? {
  WomanNew3 toDomain() {
    return WomanNew3(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.title2?.orEmpty() ?? Constants.empty,
      this?.title3?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
      this?.price2?.orZeroD() ?? Constants.zeroD,
      this?.price3?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension WomanNew4Mapper on WomanMenuNew4Response? {
  WomanNew4 toDomain() {
    return WomanNew4(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension WomanNew5Mapper on WomanMenuNew5Response? {
  WomanNew5 toDomain() {
    return WomanNew5(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension WomanNew6Mapper on WomanMenuNew6Response? {
  WomanNew6 toDomain() {
    return WomanNew6(
      this?.id?.orZero() ?? Constants.zero,
      this?.title1?.orEmpty() ?? Constants.empty,
      this?.title2?.orEmpty() ?? Constants.empty,
      this?.title3?.orEmpty() ?? Constants.empty,
      this?.image1?.orEmpty() ?? Constants.empty,
      this?.image2?.orEmpty() ?? Constants.empty,
      this?.image3?.orEmpty() ?? Constants.empty,
      this?.price1?.orZeroD() ?? Constants.zeroD,
      this?.price2?.orZeroD() ?? Constants.zeroD,
      this?.price3?.orZeroD() ?? Constants.zeroD,
    );
  }
}

extension MenuNewCatMapper on NewCatReponse? {
  MenuNewObject toDomain() {
    List<ManNew1> mappedManNew1 = (this
                ?.data
                ?.manMenuNew1Response
                ?.map((mappedManNew1) => mappedManNew1.toDomain()) ??
            const Iterable.empty())
        .cast<ManNew1>()
        .toList();
    List<ManNew2> mappedManNew2 = (this
                ?.data
                ?.manMenuNew2Response
                ?.map((mappedManNew2) => mappedManNew2.toDomain()) ??
            const Iterable.empty())
        .cast<ManNew2>()
        .toList();
    List<ManNew3> mappedManNew3 = (this
                ?.data
                ?.manMenuNew3Response
                ?.map((mappedManNew3) => mappedManNew3.toDomain()) ??
            const Iterable.empty())
        .cast<ManNew3>()
        .toList();
    List<ManNew4> mappedManNew4 = (this
                ?.data
                ?.manMenuNew4Response
                ?.map((mappedManNew4) => mappedManNew4.toDomain()) ??
            const Iterable.empty())
        .cast<ManNew4>()
        .toList();
    List<ManNew5> mappedManNew5 = (this
                ?.data
                ?.manMenuNew5Response
                ?.map((mappedManNew5) => mappedManNew5.toDomain()) ??
            const Iterable.empty())
        .cast<ManNew5>()
        .toList();
    List<ManNew6> mappedManNew6 = (this
                ?.data
                ?.manMenuNew6Response
                ?.map((mappedManNew6) => mappedManNew6.toDomain()) ??
            const Iterable.empty())
        .cast<ManNew6>()
        .toList();
    List<WomanNew1> mappedWomanNew1 = (this
                ?.data
                ?.womanMenuNew1Response
                ?.map((mappedWomanNew1) => mappedWomanNew1.toDomain()) ??
            const Iterable.empty())
        .cast<WomanNew1>()
        .toList();
    List<WomanNew2> mappedWomanNew2 = (this
                ?.data
                ?.womanMenuNew2Response
                ?.map((mappedWomanNew2) => mappedWomanNew2.toDomain()) ??
            const Iterable.empty())
        .cast<WomanNew2>()
        .toList();
    List<WomanNew3> mappedWomanNew3 = (this
                ?.data
                ?.womanMenuNew3Response
                ?.map((mappedWomanNew3) => mappedWomanNew3.toDomain()) ??
            const Iterable.empty())
        .cast<WomanNew3>()
        .toList();
    List<WomanNew4> mappedWomanNew4 = (this
                ?.data
                ?.womanMenuNew4Response
                ?.map((mappedWomanNew4) => mappedWomanNew4.toDomain()) ??
            const Iterable.empty())
        .cast<WomanNew4>()
        .toList();
    List<WomanNew5> mappedWomanNew5 = (this
                ?.data
                ?.womanMenuNew5Response
                ?.map((mappedWomanNew5) => mappedWomanNew5.toDomain()) ??
            const Iterable.empty())
        .cast<WomanNew5>()
        .toList();
    List<WomanNew6> mappedWomanNew6 = (this
                ?.data
                ?.womanMenuNew6Response
                ?.map((mappedWomanNew6) => mappedWomanNew6.toDomain()) ??
            const Iterable.empty())
        .cast<WomanNew6>()
        .toList();

    var data = MenuNewData(
      mappedManNew1,
      mappedManNew2,
      mappedManNew3,
      mappedManNew4,
      mappedManNew5,
      mappedManNew6,
      mappedWomanNew1,
      mappedWomanNew2,
      mappedWomanNew3,
      mappedWomanNew4,
      mappedWomanNew5,
      mappedWomanNew6,
    );
    return MenuNewObject(data);
  }
}
