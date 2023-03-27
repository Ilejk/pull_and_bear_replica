// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse {
  @JsonKey(name: "status")
  int? baseResponseStatus;
  @JsonKey(name: "message")
  String? message;
}

@JsonSerializable()
class NewResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  NewResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$NewResponseToJson(this);
  factory NewResponse.fromJson(Map<String, dynamic> json) =>
      _$NewResponseFromJson(json);
}

@JsonSerializable()
class MidSeasonResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  MidSeasonResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$MidSeasonResponseToJson(this);
  factory MidSeasonResponse.fromJson(Map<String, dynamic> json) =>
      _$MidSeasonResponseFromJson(json);
}

@JsonSerializable()
class HollywoodResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  HollywoodResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$HollywoodResponseToJson(this);
  factory HollywoodResponse.fromJson(Map<String, dynamic> json) =>
      _$HollywoodResponseFromJson(json);
}

@JsonSerializable()
class JeansResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  JeansResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$JeansResponseToJson(this);
  factory JeansResponse.fromJson(Map<String, dynamic> json) =>
      _$JeansResponseFromJson(json);
}

@JsonSerializable()
class TShirtsResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  TShirtsResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$TShirtsResponseToJson(this);
  factory TShirtsResponse.fromJson(Map<String, dynamic> json) =>
      _$TShirtsResponseFromJson(json);
}

@JsonSerializable()
class FanCornerResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  FanCornerResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$FanCornerResponseToJson(this);
  factory FanCornerResponse.fromJson(Map<String, dynamic> json) =>
      _$FanCornerResponseFromJson(json);
}

@JsonSerializable()
class CommunityResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  CommunityResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$CommunityResponseToJson(this);
  factory CommunityResponse.fromJson(Map<String, dynamic> json) =>
      _$CommunityResponseFromJson(json);
}

@JsonSerializable()
class HomeDataResponse {
  @JsonKey(name: 'new')
  List<NewResponse>? news;
  @JsonKey(name: 'midseason')
  List<MidSeasonResponse>? midseason;
  @JsonKey(name: 'hollywood')
  List<HollywoodResponse>? hollywood;
  @JsonKey(name: 'jeans')
  List<JeansResponse>? jeans;
  @JsonKey(name: 'tshirts')
  List<TShirtsResponse>? tshirts;
  @JsonKey(name: 'fancorner')
  List<FanCornerResponse>? fancorner;
  @JsonKey(name: 'community')
  List<CommunityResponse>? community;

  HomeDataResponse(
    this.news,
    this.midseason,
    this.hollywood,
    this.jeans,
    this.tshirts,
    this.fancorner,
    this.community,
  );
  Map<String, dynamic> toJson() => _$HomeDataResponseToJson(this);
  factory HomeDataResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeDataResponseFromJson(json);
}

@JsonSerializable()
class HomeResponse extends BaseResponse {
  @JsonKey(name: 'data')
  HomeDataResponse? data;

  HomeResponse(this.data);

  Map<String, dynamic> toJson() => _$HomeResponseToJson(this);
  factory HomeResponse.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseFromJson(json);
}

@JsonSerializable()
class CustomerRespose {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "numOfNotifications")
  int? numOfNotifications;

  CustomerRespose(this.id, this.name, this.numOfNotifications);
  factory CustomerRespose.fromJson(Map<String, dynamic> json) =>
      _$CustomerResposeFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerResposeToJson(this);
}

@JsonSerializable()
class ContactResponse {
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone")
  String? phone;
  @JsonKey(name: "link")
  String? link;

  ContactResponse(this.email, this.phone, this.link);
  factory ContactResponse.fromJson(Map<String, dynamic> json) =>
      _$ContactResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ContactResponseToJson(this);
}

@JsonSerializable()
class AuthResponse extends BaseResponse {
  @JsonKey(name: "customer")
  CustomerRespose? customer;
  @JsonKey(name: "contacts")
  ContactResponse? contacts;

  AuthResponse(this.customer, this.contacts);
  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}

@JsonSerializable()
class NewManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  NewManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$NewManMenuResponseToJson(this);
  factory NewManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$NewManMenuResponseFromJson(json);
}

@JsonSerializable()
class MidSeasonManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  MidSeasonManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$MidSeasonManMenuResponseToJson(this);
  factory MidSeasonManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$MidSeasonManMenuResponseFromJson(json);
}

@JsonSerializable()
class ClothingManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  ClothingManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$ClothingManMenuResponseToJson(this);
  factory ClothingManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$ClothingManMenuResponseFromJson(json);
}

@JsonSerializable()
class SwimWearManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  SwimWearManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$SwimWearManMenuResponseToJson(this);
  factory SwimWearManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$SwimWearManMenuResponseFromJson(json);
}

@JsonSerializable()
class JeansManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  JeansManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$JeansManMenuResponseToJson(this);
  factory JeansManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$JeansManMenuResponseFromJson(json);
}

@JsonSerializable()
class ShoesManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  ShoesManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$ShoesManMenuResponseToJson(this);
  factory ShoesManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoesManMenuResponseFromJson(json);
}

@JsonSerializable()
class AccessoriesManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  AccessoriesManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$AccessoriesManMenuResponseToJson(this);
  factory AccessoriesManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessoriesManMenuResponseFromJson(json);
}

@JsonSerializable()
class BagsManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  BagsManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$BagsManMenuResponseToJson(this);
  factory BagsManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$BagsManMenuResponseFromJson(json);
}

@JsonSerializable()
class LicensedManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  LicensedManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$LicensedManMenuResponseToJson(this);
  factory LicensedManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$LicensedManMenuResponseFromJson(json);
}

@JsonSerializable()
class StwdManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  StwdManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$StwdManMenuResponseToJson(this);
  factory StwdManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$StwdManMenuResponseFromJson(json);
}

@JsonSerializable()
class BasicsManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  BasicsManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$BasicsManMenuResponseToJson(this);
  factory BasicsManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$BasicsManMenuResponseFromJson(json);
}

@JsonSerializable()
class UnisexManMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  UnisexManMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$UnisexManMenuResponseToJson(this);
  factory UnisexManMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$UnisexManMenuResponseFromJson(json);
}

@JsonSerializable()
class NewWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  NewWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$NewWomanMenuResponseToJson(this);
  factory NewWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$NewWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class MidSeasonWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  MidSeasonWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$MidSeasonWomanMenuResponseToJson(this);
  factory MidSeasonWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$MidSeasonWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class ClothingWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  ClothingWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$ClothingWomanMenuResponseToJson(this);
  factory ClothingWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$ClothingWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class BikinsWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  BikinsWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$BikinsWomanMenuResponseToJson(this);
  factory BikinsWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$BikinsWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class DenimWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  DenimWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$DenimWomanMenuResponseToJson(this);
  factory DenimWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$DenimWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class ShoesWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  ShoesWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$ShoesWomanMenuResponseToJson(this);
  factory ShoesWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$ShoesWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class BagsWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  BagsWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$BagsWomanMenuResponseToJson(this);
  factory BagsWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$BagsWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class AccessoriesWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  AccessoriesWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$AccessoriesWomanMenuResponseToJson(this);
  factory AccessoriesWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$AccessoriesWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class EqualsWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  EqualsWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$EqualsWomanMenuResponseToJson(this);
  factory EqualsWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$EqualsWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class ExclusiveWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  ExclusiveWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$ExclusiveWomanMenuResponseToJson(this);
  factory ExclusiveWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$ExclusiveWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class PacificWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  PacificWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$PacificWomanMenuResponseToJson(this);
  factory PacificWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$PacificWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class UnisexWomanMenuResponse {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'image')
  String? image;

  UnisexWomanMenuResponse(
    this.id,
    this.title,
    this.image,
  );

  Map<String, dynamic> toJson() => _$UnisexWomanMenuResponseToJson(this);
  factory UnisexWomanMenuResponse.fromJson(Map<String, dynamic> json) =>
      _$UnisexWomanMenuResponseFromJson(json);
}

@JsonSerializable()
class MenuDataResponse {
  @JsonKey(name: 'new_man_menu')
  List<NewManMenuResponse>? newMan;
  @JsonKey(name: 'midseason_man_menu')
  List<MidSeasonManMenuResponse>? midseasonMan;
  @JsonKey(name: 'clothing_man_menu')
  List<ClothingManMenuResponse>? clothingMan;
  @JsonKey(name: 'swimwear_man_menu')
  List<SwimWearManMenuResponse>? swinwearMan;
  @JsonKey(name: 'jeans_man_menu')
  List<JeansManMenuResponse>? jeansMan;
  @JsonKey(name: 'shoes_man_menu')
  List<ShoesManMenuResponse>? shoesMan;
  @JsonKey(name: 'accessories_man_menu')
  List<AccessoriesManMenuResponse>? accessoriesMan;
  @JsonKey(name: 'bags_man_menu')
  List<BagsManMenuResponse>? bagsMan;
  @JsonKey(name: 'licensed_man_menu')
  List<LicensedManMenuResponse>? licensedMan;
  @JsonKey(name: 'stwd_man_menu')
  List<StwdManMenuResponse>? stwdMan;
  @JsonKey(name: 'basics_man_menu')
  List<BasicsManMenuResponse>? basicsMan;
  @JsonKey(name: 'unisex_man_menu')
  List<UnisexManMenuResponse>? unisexMan;
  @JsonKey(name: 'new_woman_menu')
  List<NewWomanMenuResponse>? newWoman;
  @JsonKey(name: 'midseason_woman_menu')
  List<MidSeasonWomanMenuResponse>? midseasonWoman;
  @JsonKey(name: 'clothing_woman_menu')
  List<ClothingWomanMenuResponse>? clothingWoman;
  @JsonKey(name: 'bikinis_woman_menu')
  List<BikinsWomanMenuResponse>? bikinisWoman;
  @JsonKey(name: 'denim_woman_menu')
  List<DenimWomanMenuResponse>? denimWoman;
  @JsonKey(name: 'shoes_woman_menu')
  List<ShoesWomanMenuResponse>? shoesWoman;
  @JsonKey(name: 'bags_woman_menu')
  List<BagsWomanMenuResponse>? bagsWoman;
  @JsonKey(name: 'accessories_woman_menu')
  List<AccessoriesWomanMenuResponse>? accessoriesWoman;
  @JsonKey(name: 'equals_woman_menu')
  List<EqualsWomanMenuResponse>? equalsWoman;
  @JsonKey(name: 'exclusive_woman_menu')
  List<ExclusiveWomanMenuResponse>? exclusiveWoman;
  @JsonKey(name: 'pacific_woman_menu')
  List<PacificWomanMenuResponse>? pacificWoman;
  @JsonKey(name: 'unisex_woman_menu')
  List<UnisexWomanMenuResponse>? unisexWoman;

  MenuDataResponse(
    this.accessoriesMan,
    this.accessoriesWoman,
    this.bagsMan,
    this.bagsWoman,
    this.basicsMan,
    this.bikinisWoman,
    this.clothingMan,
    this.clothingWoman,
    this.denimWoman,
    this.equalsWoman,
    this.exclusiveWoman,
    this.jeansMan,
    this.licensedMan,
    this.midseasonMan,
    this.midseasonWoman,
    this.newMan,
    this.newWoman,
    this.pacificWoman,
    this.shoesMan,
    this.shoesWoman,
    this.stwdMan,
    this.swinwearMan,
    this.unisexMan,
    this.unisexWoman,
  );
  Map<String, dynamic> toJson() => _$MenuDataResponseToJson(this);
  factory MenuDataResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuDataResponseFromJson(json);
}

@JsonSerializable()
class MenuResponse extends BaseResponse {
  @JsonKey(name: 'data')
  MenuDataResponse? data;

  MenuResponse(this.data);

  Map<String, dynamic> toJson() => _$MenuResponseToJson(this);
  factory MenuResponse.fromJson(Map<String, dynamic> json) =>
      _$MenuResponseFromJson(json);
}
