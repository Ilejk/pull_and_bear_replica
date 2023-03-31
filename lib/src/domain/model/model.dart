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

class NewWomanHome {
  int id;
  String title;
  String image;

  NewWomanHome(
    this.id,
    this.title,
    this.image,
  );
}

class BikinisWomanHome {
  int id;
  String title;
  String image;

  BikinisWomanHome(
    this.id,
    this.title,
    this.image,
  );
}

class DenimWomanHome {
  int id;
  String title;
  String image;

  DenimWomanHome(
    this.id,
    this.title,
    this.image,
  );
}

class AccessoriesWomanHome {
  int id;
  String title;
  String image;

  AccessoriesWomanHome(
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
  List<NewWomanHome> newWomanHome;
  List<BikinisWomanHome> bikinisWomanHome;
  List<DenimWomanHome> denimWomanHome;
  List<AccessoriesWomanHome> accessoriesWomanHome;

  HomeData(
    this.news,
    this.midSeason,
    this.hollywood,
    this.jeans,
    this.tShirts,
    this.fanCorner,
    this.community,
    this.newWomanHome,
    this.bikinisWomanHome,
    this.denimWomanHome,
    this.accessoriesWomanHome,
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

class ManNew1 {
  int id;
  String title1;
  String image1;
  String image2;
  String image3;
  String image4;
  double price1;

  ManNew1(
    this.id,
    this.title1,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.price1,
  );
}

class ManNew2 {
  int id;
  String title1;
  String image1;
  double price1;

  ManNew2(
    this.id,
    this.title1,
    this.image1,
    this.price1,
  );
}

class ManNew3 {
  int id;
  String title1;
  String title2;
  String title3;
  String image1;
  String image2;
  String image3;
  double price1;
  double price2;
  double price3;

  ManNew3(
    this.id,
    this.title1,
    this.title2,
    this.title3,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
    this.price2,
    this.price3,
  );
}

class ManNew4 {
  int id;
  String title1;
  String image1;
  double price1;

  ManNew4(
    this.id,
    this.title1,
    this.image1,
    this.price1,
  );
}

class ManNew5 {
  int id;
  String title1;
  String image1;
  String image2;
  String image3;
  double price1;

  ManNew5(
    this.id,
    this.title1,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
  );
}

class ManNew6 {
  int id;
  String title1;
  String title2;
  String title3;
  String image1;
  String image2;
  String image3;
  double price1;
  double price2;
  double price3;

  ManNew6(
    this.id,
    this.title1,
    this.title2,
    this.title3,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
    this.price2,
    this.price3,
  );
}

class WomanNew1 {
  int id;
  String title1;
  String image1;
  String image2;
  String image3;
  String image4;
  double price1;

  WomanNew1(
    this.id,
    this.title1,
    this.image1,
    this.image2,
    this.image3,
    this.image4,
    this.price1,
  );
}

class WomanNew2 {
  int id;
  String title1;
  String image1;
  double price1;

  WomanNew2(
    this.id,
    this.title1,
    this.image1,
    this.price1,
  );
}

class WomanNew3 {
  int id;
  String title1;
  String title2;
  String title3;
  String image1;
  String image2;
  String image3;
  double price1;
  double price2;
  double price3;

  WomanNew3(
    this.id,
    this.title1,
    this.title2,
    this.title3,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
    this.price2,
    this.price3,
  );
}

class WomanNew4 {
  int id;
  String title1;
  String image1;
  double price1;

  WomanNew4(
    this.id,
    this.title1,
    this.image1,
    this.price1,
  );
}

class WomanNew5 {
  int id;
  String title1;
  String image1;
  String image2;
  String image3;
  double price1;

  WomanNew5(
    this.id,
    this.title1,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
  );
}

class WomanNew6 {
  int id;
  String title1;
  String title2;
  String title3;
  String image1;
  String image2;
  String image3;
  double price1;
  double price2;
  double price3;

  WomanNew6(
    this.id,
    this.title1,
    this.title2,
    this.title3,
    this.image1,
    this.image2,
    this.image3,
    this.price1,
    this.price2,
    this.price3,
  );
}

class MenuNewData {
  List<ManNew1> manNew1;
  List<ManNew2> manNew2;
  List<ManNew3> manNew3;
  List<ManNew4> manNew4;
  List<ManNew5> manNew5;
  List<ManNew6> manNew6;
  List<WomanNew1> womanNew1;
  List<WomanNew2> womanNew2;
  List<WomanNew3> womanNew3;
  List<WomanNew4> womanNew4;
  List<WomanNew5> womanNew5;
  List<WomanNew6> womanNew6;

  MenuNewData(
    this.manNew1,
    this.manNew2,
    this.manNew3,
    this.manNew4,
    this.manNew5,
    this.manNew6,
    this.womanNew1,
    this.womanNew2,
    this.womanNew3,
    this.womanNew4,
    this.womanNew5,
    this.womanNew6,
  );
}

class MenuNewObject {
  MenuNewData data;

  MenuNewObject(this.data);
}
