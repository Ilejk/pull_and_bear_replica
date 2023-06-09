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

NewWomanHomeResponse _$NewWomanHomeResponseFromJson(
        Map<String, dynamic> json) =>
    NewWomanHomeResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$NewWomanHomeResponseToJson(
        NewWomanHomeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

BikinisResponse _$BikinisResponseFromJson(Map<String, dynamic> json) =>
    BikinisResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$BikinisResponseToJson(BikinisResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

DenimHomeResponse _$DenimHomeResponseFromJson(Map<String, dynamic> json) =>
    DenimHomeResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$DenimHomeResponseToJson(DenimHomeResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

AccessoriesWomanHomeResponse _$AccessoriesWomanHomeResponseFromJson(
        Map<String, dynamic> json) =>
    AccessoriesWomanHomeResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$AccessoriesWomanHomeResponseToJson(
        AccessoriesWomanHomeResponse instance) =>
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
      (json['new_woman'] as List<dynamic>?)
          ?.map((e) => NewWomanHomeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bikinis'] as List<dynamic>?)
          ?.map((e) => BikinisResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['denim'] as List<dynamic>?)
          ?.map((e) => DenimHomeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['accessories'] as List<dynamic>?)
          ?.map((e) =>
              AccessoriesWomanHomeResponse.fromJson(e as Map<String, dynamic>))
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
      'new_woman': instance.newWoman,
      'bikinis': instance.bikinis,
      'denim': instance.denim,
      'accessories': instance.accessories,
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

NewManMenuResponse _$NewManMenuResponseFromJson(Map<String, dynamic> json) =>
    NewManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$NewManMenuResponseToJson(NewManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

MidSeasonManMenuResponse _$MidSeasonManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    MidSeasonManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$MidSeasonManMenuResponseToJson(
        MidSeasonManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

ClothingManMenuResponse _$ClothingManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    ClothingManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ClothingManMenuResponseToJson(
        ClothingManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

SwimWearManMenuResponse _$SwimWearManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    SwimWearManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$SwimWearManMenuResponseToJson(
        SwimWearManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

JeansManMenuResponse _$JeansManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    JeansManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$JeansManMenuResponseToJson(
        JeansManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

ShoesManMenuResponse _$ShoesManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    ShoesManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ShoesManMenuResponseToJson(
        ShoesManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

AccessoriesManMenuResponse _$AccessoriesManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    AccessoriesManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$AccessoriesManMenuResponseToJson(
        AccessoriesManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

BagsManMenuResponse _$BagsManMenuResponseFromJson(Map<String, dynamic> json) =>
    BagsManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$BagsManMenuResponseToJson(
        BagsManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

LicensedManMenuResponse _$LicensedManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    LicensedManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$LicensedManMenuResponseToJson(
        LicensedManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

StwdManMenuResponse _$StwdManMenuResponseFromJson(Map<String, dynamic> json) =>
    StwdManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$StwdManMenuResponseToJson(
        StwdManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

BasicsManMenuResponse _$BasicsManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    BasicsManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$BasicsManMenuResponseToJson(
        BasicsManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

UnisexManMenuResponse _$UnisexManMenuResponseFromJson(
        Map<String, dynamic> json) =>
    UnisexManMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$UnisexManMenuResponseToJson(
        UnisexManMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

NewWomanMenuResponse _$NewWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    NewWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$NewWomanMenuResponseToJson(
        NewWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

MidSeasonWomanMenuResponse _$MidSeasonWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    MidSeasonWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$MidSeasonWomanMenuResponseToJson(
        MidSeasonWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

ClothingWomanMenuResponse _$ClothingWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    ClothingWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ClothingWomanMenuResponseToJson(
        ClothingWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

BikinsWomanMenuResponse _$BikinsWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    BikinsWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$BikinsWomanMenuResponseToJson(
        BikinsWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

DenimWomanMenuResponse _$DenimWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    DenimWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$DenimWomanMenuResponseToJson(
        DenimWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

ShoesWomanMenuResponse _$ShoesWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    ShoesWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ShoesWomanMenuResponseToJson(
        ShoesWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

BagsWomanMenuResponse _$BagsWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    BagsWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$BagsWomanMenuResponseToJson(
        BagsWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

AccessoriesWomanMenuResponse _$AccessoriesWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    AccessoriesWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$AccessoriesWomanMenuResponseToJson(
        AccessoriesWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

EqualsWomanMenuResponse _$EqualsWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    EqualsWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$EqualsWomanMenuResponseToJson(
        EqualsWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

ExclusiveWomanMenuResponse _$ExclusiveWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    ExclusiveWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$ExclusiveWomanMenuResponseToJson(
        ExclusiveWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

PacificWomanMenuResponse _$PacificWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    PacificWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$PacificWomanMenuResponseToJson(
        PacificWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

UnisexWomanMenuResponse _$UnisexWomanMenuResponseFromJson(
        Map<String, dynamic> json) =>
    UnisexWomanMenuResponse(
      json['id'] as int?,
      json['title'] as String?,
      json['image'] as String?,
    );

Map<String, dynamic> _$UnisexWomanMenuResponseToJson(
        UnisexWomanMenuResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

MenuDataResponse _$MenuDataResponseFromJson(Map<String, dynamic> json) =>
    MenuDataResponse(
      (json['accessories_man_menu'] as List<dynamic>?)
          ?.map((e) =>
              AccessoriesManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['accessories_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              AccessoriesWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bags_man_menu'] as List<dynamic>?)
          ?.map((e) => BagsManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bags_woman_menu'] as List<dynamic>?)
          ?.map(
              (e) => BagsWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['basics_man_menu'] as List<dynamic>?)
          ?.map(
              (e) => BasicsManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['bikinis_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              BikinsWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['clothing_man_menu'] as List<dynamic>?)
          ?.map((e) =>
              ClothingManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['clothing_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              ClothingWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['denim_woman_menu'] as List<dynamic>?)
          ?.map(
              (e) => DenimWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['equals_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              EqualsWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['exclusive_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              ExclusiveWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['jeans_man_menu'] as List<dynamic>?)
          ?.map((e) => JeansManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['licensed_man_menu'] as List<dynamic>?)
          ?.map((e) =>
              LicensedManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['midseason_man_menu'] as List<dynamic>?)
          ?.map((e) =>
              MidSeasonManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['midseason_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              MidSeasonWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['new_man_menu'] as List<dynamic>?)
          ?.map((e) => NewManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['new_woman_menu'] as List<dynamic>?)
          ?.map((e) => NewWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['pacific_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              PacificWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['shoes_man_menu'] as List<dynamic>?)
          ?.map((e) => ShoesManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['shoes_woman_menu'] as List<dynamic>?)
          ?.map(
              (e) => ShoesWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['stwd_man_menu'] as List<dynamic>?)
          ?.map((e) => StwdManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['swimwear_man_menu'] as List<dynamic>?)
          ?.map((e) =>
              SwimWearManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['unisex_man_menu'] as List<dynamic>?)
          ?.map(
              (e) => UnisexManMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['unisex_woman_menu'] as List<dynamic>?)
          ?.map((e) =>
              UnisexWomanMenuResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuDataResponseToJson(MenuDataResponse instance) =>
    <String, dynamic>{
      'new_man_menu': instance.newMan,
      'midseason_man_menu': instance.midseasonMan,
      'clothing_man_menu': instance.clothingMan,
      'swimwear_man_menu': instance.swinwearMan,
      'jeans_man_menu': instance.jeansMan,
      'shoes_man_menu': instance.shoesMan,
      'accessories_man_menu': instance.accessoriesMan,
      'bags_man_menu': instance.bagsMan,
      'licensed_man_menu': instance.licensedMan,
      'stwd_man_menu': instance.stwdMan,
      'basics_man_menu': instance.basicsMan,
      'unisex_man_menu': instance.unisexMan,
      'new_woman_menu': instance.newWoman,
      'midseason_woman_menu': instance.midseasonWoman,
      'clothing_woman_menu': instance.clothingWoman,
      'bikinis_woman_menu': instance.bikinisWoman,
      'denim_woman_menu': instance.denimWoman,
      'shoes_woman_menu': instance.shoesWoman,
      'bags_woman_menu': instance.bagsWoman,
      'accessories_woman_menu': instance.accessoriesWoman,
      'equals_woman_menu': instance.equalsWoman,
      'exclusive_woman_menu': instance.exclusiveWoman,
      'pacific_woman_menu': instance.pacificWoman,
      'unisex_woman_menu': instance.unisexWoman,
    };

MenuResponse _$MenuResponseFromJson(Map<String, dynamic> json) => MenuResponse(
      json['data'] == null
          ? null
          : MenuDataResponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..baseResponseStatus = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$MenuResponseToJson(MenuResponse instance) =>
    <String, dynamic>{
      'status': instance.baseResponseStatus,
      'message': instance.message,
      'data': instance.data,
    };

ManMenuNew1Response _$ManMenuNew1ResponseFromJson(Map<String, dynamic> json) =>
    ManMenuNew1Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      json['image4'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ManMenuNew1ResponseToJson(
        ManMenuNew1Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'price1': instance.price1,
    };

ManMenuNew2Response _$ManMenuNew2ResponseFromJson(Map<String, dynamic> json) =>
    ManMenuNew2Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ManMenuNew2ResponseToJson(
        ManMenuNew2Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'price1': instance.price1,
    };

ManMenuNew3Response _$ManMenuNew3ResponseFromJson(Map<String, dynamic> json) =>
    ManMenuNew3Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['title2'] as String?,
      json['title3'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      (json['price1'] as num?)?.toDouble(),
      (json['price2'] as num?)?.toDouble(),
      (json['price3'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ManMenuNew3ResponseToJson(
        ManMenuNew3Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'title2': instance.title2,
      'title3': instance.title3,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'price1': instance.price1,
      'price2': instance.price2,
      'price3': instance.price3,
    };

ManMenuNew4Response _$ManMenuNew4ResponseFromJson(Map<String, dynamic> json) =>
    ManMenuNew4Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ManMenuNew4ResponseToJson(
        ManMenuNew4Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'price1': instance.price1,
    };

ManMenuNew5Response _$ManMenuNew5ResponseFromJson(Map<String, dynamic> json) =>
    ManMenuNew5Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ManMenuNew5ResponseToJson(
        ManMenuNew5Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'price1': instance.price1,
    };

ManMenuNew6Response _$ManMenuNew6ResponseFromJson(Map<String, dynamic> json) =>
    ManMenuNew6Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['title2'] as String?,
      json['title3'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      (json['price1'] as num?)?.toDouble(),
      (json['price2'] as num?)?.toDouble(),
      (json['price3'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$ManMenuNew6ResponseToJson(
        ManMenuNew6Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'title2': instance.title2,
      'title3': instance.title3,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'price1': instance.price1,
      'price2': instance.price2,
      'price3': instance.price3,
    };

WomanMenuNew1Response _$WomanMenuNew1ResponseFromJson(
        Map<String, dynamic> json) =>
    WomanMenuNew1Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      json['image4'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WomanMenuNew1ResponseToJson(
        WomanMenuNew1Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'image4': instance.image4,
      'price1': instance.price1,
    };

WomanMenuNew2Response _$WomanMenuNew2ResponseFromJson(
        Map<String, dynamic> json) =>
    WomanMenuNew2Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WomanMenuNew2ResponseToJson(
        WomanMenuNew2Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'price1': instance.price1,
    };

WomanMenuNew3Response _$WomanMenuNew3ResponseFromJson(
        Map<String, dynamic> json) =>
    WomanMenuNew3Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['title2'] as String?,
      json['title3'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      (json['price1'] as num?)?.toDouble(),
      (json['price2'] as num?)?.toDouble(),
      (json['price3'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WomanMenuNew3ResponseToJson(
        WomanMenuNew3Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'title2': instance.title2,
      'title3': instance.title3,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'price1': instance.price1,
      'price2': instance.price2,
      'price3': instance.price3,
    };

WomanMenuNew4Response _$WomanMenuNew4ResponseFromJson(
        Map<String, dynamic> json) =>
    WomanMenuNew4Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WomanMenuNew4ResponseToJson(
        WomanMenuNew4Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'price1': instance.price1,
    };

WomanMenuNew5Response _$WomanMenuNew5ResponseFromJson(
        Map<String, dynamic> json) =>
    WomanMenuNew5Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      (json['price1'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WomanMenuNew5ResponseToJson(
        WomanMenuNew5Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'price1': instance.price1,
    };

WomanMenuNew6Response _$WomanMenuNew6ResponseFromJson(
        Map<String, dynamic> json) =>
    WomanMenuNew6Response(
      json['id'] as int?,
      json['title1'] as String?,
      json['title2'] as String?,
      json['title3'] as String?,
      json['image1'] as String?,
      json['image2'] as String?,
      json['image3'] as String?,
      (json['price1'] as num?)?.toDouble(),
      (json['price2'] as num?)?.toDouble(),
      (json['price3'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WomanMenuNew6ResponseToJson(
        WomanMenuNew6Response instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title1': instance.title1,
      'title2': instance.title2,
      'title3': instance.title3,
      'image1': instance.image1,
      'image2': instance.image2,
      'image3': instance.image3,
      'price1': instance.price1,
      'price2': instance.price2,
      'price3': instance.price3,
    };

MenuNewCatReponse _$MenuNewCatReponseFromJson(Map<String, dynamic> json) =>
    MenuNewCatReponse(
      (json['man_new_1'] as List<dynamic>)
          .map((e) => ManMenuNew1Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['man_new_2'] as List<dynamic>)
          .map((e) => ManMenuNew2Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['man_new_3'] as List<dynamic>)
          .map((e) => ManMenuNew3Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['man_new_4'] as List<dynamic>)
          .map((e) => ManMenuNew4Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['man_new_5'] as List<dynamic>)
          .map((e) => ManMenuNew5Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['man_new_6'] as List<dynamic>)
          .map((e) => ManMenuNew6Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['woman_new_1'] as List<dynamic>)
          .map((e) => WomanMenuNew1Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['woman_new_2'] as List<dynamic>)
          .map((e) => WomanMenuNew2Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['woman_new_3'] as List<dynamic>)
          .map((e) => WomanMenuNew3Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['woman_new_4'] as List<dynamic>)
          .map((e) => WomanMenuNew4Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['woman_new_5'] as List<dynamic>)
          .map((e) => WomanMenuNew5Response.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['woman_new_6'] as List<dynamic>)
          .map((e) => WomanMenuNew6Response.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MenuNewCatReponseToJson(MenuNewCatReponse instance) =>
    <String, dynamic>{
      'man_new_1': instance.manMenuNew1Response,
      'man_new_2': instance.manMenuNew2Response,
      'man_new_3': instance.manMenuNew3Response,
      'man_new_4': instance.manMenuNew4Response,
      'man_new_5': instance.manMenuNew5Response,
      'man_new_6': instance.manMenuNew6Response,
      'woman_new_1': instance.womanMenuNew1Response,
      'woman_new_2': instance.womanMenuNew2Response,
      'woman_new_3': instance.womanMenuNew3Response,
      'woman_new_4': instance.womanMenuNew4Response,
      'woman_new_5': instance.womanMenuNew5Response,
      'woman_new_6': instance.womanMenuNew6Response,
    };

NewCatReponse _$NewCatReponseFromJson(Map<String, dynamic> json) =>
    NewCatReponse(
      json['data'] == null
          ? null
          : MenuNewCatReponse.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..baseResponseStatus = json['status'] as int?
      ..message = json['message'] as String?;

Map<String, dynamic> _$NewCatReponseToJson(NewCatReponse instance) =>
    <String, dynamic>{
      'status': instance.baseResponseStatus,
      'message': instance.message,
      'data': instance.data,
    };
