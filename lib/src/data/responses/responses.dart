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
