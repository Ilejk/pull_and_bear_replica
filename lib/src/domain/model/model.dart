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
