import 'package:pull_and_bear_replica/src/app/constants.dart';
import 'package:pull_and_bear_replica/src/app/extensions.dart';
import 'package:pull_and_bear_replica/src/data/responses/responses.dart';
import 'package:pull_and_bear_replica/src/domain/model/model.dart';

extension NewResponseMapper on NewResponse? {
  News toDomain() {
    return News(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}

extension MidSeasonResponseMapper on MidSeasonResponse? {
  MidSeason toDomain() {
    return MidSeason(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}

extension HollywoodResponseMapper on HollywoodResponse? {
  Hollywood toDomain() {
    return Hollywood(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}

extension JeansResponseMapper on JeansResponse? {
  Jeans toDomain() {
    return Jeans(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}

extension TShirtsResponseMapper on TShirtsResponse? {
  TShirts toDomain() {
    return TShirts(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}

extension FanCornerResponseMapper on FanCornerResponse? {
  FanCorner toDomain() {
    return FanCorner(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}

extension CommunityResponseMapper on CommunityResponse? {
  Community toDomain() {
    return Community(
        this?.id?.orZero() ?? Constants.zero,
        this?.title?.orEmpty() ?? Constants.empty,
        this?.image?.orEmpty() ?? Constants.empty);
  }
}
