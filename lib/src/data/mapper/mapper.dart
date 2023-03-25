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

    var data = HomeData(
      mappedNews,
      mappedMidSeason,
      mappedHollywood,
      mappedJeans,
      mappedTShirts,
      mappedFanCorner,
      mappedCommunity,
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
