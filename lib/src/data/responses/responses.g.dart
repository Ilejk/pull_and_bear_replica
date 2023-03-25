// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..baseResponseStatus = json['status'] as int?
  ..message = json['message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'status': instance.baseResponseStatus,
      'message': instance.message,
    };

NewResponse _$NewResponseFromJson(Map<String, dynamic> json) => NewResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$NewResponseToJson(NewResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

MidSeasonResponse _$MidSeasonResponseFromJson(Map<String, dynamic> json) =>
    MidSeasonResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$MidSeasonResponseToJson(MidSeasonResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

HollywoodResponse _$HollywoodResponseFromJson(Map<String, dynamic> json) =>
    HollywoodResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$HollywoodResponseToJson(HollywoodResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

JeansResponse _$JeansResponseFromJson(Map<String, dynamic> json) =>
    JeansResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$JeansResponseToJson(JeansResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

TShirtsResponse _$TShirtsResponseFromJson(Map<String, dynamic> json) =>
    TShirtsResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$TShirtsResponseToJson(TShirtsResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

FanCornerResponse _$FanCornerResponseFromJson(Map<String, dynamic> json) =>
    FanCornerResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$FanCornerResponseToJson(FanCornerResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

CommunityResponse _$CommunityResponseFromJson(Map<String, dynamic> json) =>
    CommunityResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$CommunityResponseToJson(CommunityResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

HomeDataResponse _$HomeDataResponseFromJson(Map<String, dynamic> json) =>
    HomeDataResponse(
      (json['new'] as List<dynamic>?)
          ?.map((e) => NewResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['midseason'] as List<dynamic>?)
          ?.map((e) => MidSeasonResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['hollywood'] as List<dynamic>?)
          ?.map((e) => HollywoodResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['jeans'] as List<dynamic>?)
          ?.map((e) => JeansResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['tshirts'] as List<dynamic>?)
          ?.map((e) => TShirtsResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['fancorner'] as List<dynamic>?)
          ?.map((e) => FanCornerResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['community'] as List<dynamic>?)
          ?.map((e) => CommunityResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataResponseToJson(HomeDataResponse instance) =>
    <String, dynamic>{
      'new': instance.news,
      'midseason': instance.midseason,
      'hollywood': instance.hollywood,
      'jeans': instance.jeans,
      'tshirts': instance.tshirts,
      'fancorner': instance.fancorner,
      'community': instance.community,
    };

HomeResponse _$HomeResponseFromJson(Map<String, dynamic> json) => HomeResponse(
      json['data'] == null
          ? null
          : HomeDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..baseResponseStatus = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$HomeResponseToJson(HomeResponse instance) =>
    <String, dynamic>{
      'status': instance.baseResponseStatus,
      'message': instance.message,
      'data': instance.data,
    };

CustomerRespose _$CustomerResposeFromJson(Map<String, dynamic> json) =>
    CustomerRespose(
      json['id'] as String?,
      json['name'] as String?,
      json['numOfNotifications'] as int?,
    );

Map<String, dynamic> _$CustomerResposeToJson(CustomerRespose instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'numOfNotifications': instance.numOfNotifications,
    };

ContactResponse _$ContactResponseFromJson(Map<String, dynamic> json) =>
    ContactResponse(
      json['email'] as String?,
      json['phone'] as String?,
      json['link'] as String?,
    );

Map<String, dynamic> _$ContactResponseToJson(ContactResponse instance) =>
    <String, dynamic>{
      'email': instance.email,
      'phone': instance.phone,
      'link': instance.link,
    };

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      json['customer'] == null
          ? null
          : CustomerRespose.fromJson(json['customer'] as Map<String, dynamic>),
      json['contacts'] == null
          ? null
          : ContactResponse.fromJson(json['contacts'] as Map<String, dynamic>),
    )
      ..baseResponseStatus = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) =>
    <String, dynamic>{
      'status': instance.baseResponseStatus,
      'message': instance.message,
      'customer': instance.customer,
      'contacts': instance.contacts,
    };
