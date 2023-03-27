class News {
  int id;
  String title;
  String image;

  News(
    this.id,
    this.title,
    this.image,
  );
}

class MidSeason {
  int id;
  String title;
  String image;

  MidSeason(
    this.id,
    this.title,
    this.image,
  );
}

class Hollywood {
  int id;
  String title;
  String image;

  Hollywood(
    this.id,
    this.title,
    this.image,
  );
}

class Jeans {
  int id;
  String title;
  String image;

  Jeans(
    this.id,
    this.title,
    this.image,
  );
}

class TShirts {
  int id;
  String title;
  String image;

  TShirts(
    this.id,
    this.title,
    this.image,
  );
}

class FanCorner {
  int id;
  String title;
  String image;

  FanCorner(
    this.id,
    this.title,
    this.image,
  );
}

class Community {
  int id;
  String title;
  String image;

  Community(
    this.id,
    this.title,
    this.image,
  );
}

class HomeData {
  List<News> news;
  List<MidSeason> midSeason;
  List<Hollywood> hollywood;
  List<Jeans> jeans;
  List<TShirts> tShirts;
  List<FanCorner> fanCorner;
  List<Community> community;

  HomeData(
    this.news,
    this.midSeason,
    this.hollywood,
    this.jeans,
    this.tShirts,
    this.fanCorner,
    this.community,
  );
}

class HomeObject {
  HomeData data;

  HomeObject(this.data);
}

class Customer {
  String id;
  String name;
  int numOfNotifications;

  Customer(
    this.id,
    this.name,
    this.numOfNotifications,
  );
}

class Contacts {
  String email;
  String phone;
  String link;

  Contacts(
    this.email,
    this.phone,
    this.link,
  );
}

class Auth {
  Customer customer;
  Contacts contacts;

  Auth(
    this.customer,
    this.contacts,
  );
}

class NewMan {
  int id;
  String title;
  String image;

  NewMan(
    this.id,
    this.title,
    this.image,
  );
}

class MidSeasonMan {
  int id;
  String title;
  String image;

  MidSeasonMan(
    this.id,
    this.title,
    this.image,
  );
}

class ClothingMan {
  int id;
  String title;
  String image;

  ClothingMan(
    this.id,
    this.title,
    this.image,
  );
}

class SwimWearMan {
  int id;
  String title;
  String image;

  SwimWearMan(
    this.id,
    this.title,
    this.image,
  );
}

class JeansMan {
  int id;
  String title;
  String image;

  JeansMan(
    this.id,
    this.title,
    this.image,
  );
}

class ShoesMan {
  int id;
  String title;
  String image;

  ShoesMan(
    this.id,
    this.title,
    this.image,
  );
}

class AccessoriesMan {
  int id;
  String title;
  String image;

  AccessoriesMan(
    this.id,
    this.title,
    this.image,
  );
}

class BagsMan {
  int id;
  String title;
  String image;

  BagsMan(
    this.id,
    this.title,
    this.image,
  );
}

class LicensedMan {
  int id;
  String title;
  String image;

  LicensedMan(
    this.id,
    this.title,
    this.image,
  );
}

class StwdMan {
  int id;
  String title;
  String image;

  StwdMan(
    this.id,
    this.title,
    this.image,
  );
}

class BasicsMan {
  int id;
  String title;
  String image;

  BasicsMan(
    this.id,
    this.title,
    this.image,
  );
}

class UnisexMan {
  int id;
  String title;
  String image;

  UnisexMan(
    this.id,
    this.title,
    this.image,
  );
}

class NewWoman {
  int id;
  String title;
  String image;

  NewWoman(
    this.id,
    this.title,
    this.image,
  );
}

class MidSeasonWoman {
  int id;
  String title;
  String image;

  MidSeasonWoman(
    this.id,
    this.title,
    this.image,
  );
}

class ClothingWoman {
  int id;
  String title;
  String image;

  ClothingWoman(
    this.id,
    this.title,
    this.image,
  );
}

class BikinisWoman {
  int id;
  String title;
  String image;

  BikinisWoman(
    this.id,
    this.title,
    this.image,
  );
}

class DenimWoman {
  int id;
  String title;
  String image;

  DenimWoman(
    this.id,
    this.title,
    this.image,
  );
}

class ShoesWoman {
  int id;
  String title;
  String image;

  ShoesWoman(
    this.id,
    this.title,
    this.image,
  );
}

class BagsWoman {
  int id;
  String title;
  String image;

  BagsWoman(
    this.id,
    this.title,
    this.image,
  );
}

class AccessoriesWoman {
  int id;
  String title;
  String image;

  AccessoriesWoman(
    this.id,
    this.title,
    this.image,
  );
}

class EqualsWoman {
  int id;
  String title;
  String image;

  EqualsWoman(
    this.id,
    this.title,
    this.image,
  );
}

class ExclusiveWoman {
  int id;
  String title;
  String image;

  ExclusiveWoman(
    this.id,
    this.title,
    this.image,
  );
}

class PacificWoman {
  int id;
  String title;
  String image;

  PacificWoman(
    this.id,
    this.title,
    this.image,
  );
}

class UnisexWoman {
  int id;
  String title;
  String image;

  UnisexWoman(
    this.id,
    this.title,
    this.image,
  );
}

class MenuData {
  List<NewMan> newMan;
  List<MidSeasonMan> midSeasonMan;
  List<ClothingMan> clothingMan;
  List<SwimWearMan> swimWearMan;
  List<JeansMan> jeansMan;
  List<ShoesMan> shoesMan;
  List<AccessoriesMan> accessoriesMan;
  List<BagsMan> bagsMan;
  List<LicensedMan> licensedMan;
  List<StwdMan> stwdMan;
  List<BasicsMan> basicsMan;
  List<UnisexMan> unisexMan;
  List<NewWoman> newWoman;
  List<MidSeasonWoman> midSeasonWoman;
  List<ClothingWoman> clothingWoman;
  List<BikinisWoman> bikinisWoman;
  List<DenimWoman> denimWoman;
  List<ShoesWoman> shoesWoman;
  List<BagsWoman> bagsWoman;
  List<AccessoriesWoman> accessoriesWoman;
  List<EqualsWoman> equalsWoman;
  List<ExclusiveWoman> exclusiveWoman;
  List<PacificWoman> pacificWoman;
  List<UnisexWoman> unisexWoman;

  MenuData(
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
    this.midSeasonMan,
    this.midSeasonWoman,
    this.newMan,
    this.newWoman,
    this.pacificWoman,
    this.shoesMan,
    this.shoesWoman,
    this.stwdMan,
    this.swimWearMan,
    this.unisexMan,
    this.unisexWoman,
  );
}

class MenuObject {
  MenuData data;

  MenuObject(this.data);
}
