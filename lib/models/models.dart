class Banner {
  final String img;
  final String title;

  Banner({this.img = '', this.title = ''});
}

List<Banner> banner = [
  Banner(
    img: "assets/images/banner/banner1.jpg",
    title: '',
  ),
  Banner(
    img: "assets/images/banner/banner2.jpg",
    title: '',
  ),
  Banner(
    img: "assets/images/banner/banner3.png",
    title: '',
  )
];

class Venue {
  final String img;
  final String title;
  final int price;
  final int isFavorite;
  final String desc;
  final String shortDesc;

  Venue({
    this.img = '',
    this.title = '',
    this.price = 0,
    this.isFavorite = 0,
    this.desc = "",
    this.shortDesc = "",
  });
}

List<Venue> venue = [
  Venue(
    img: "assets/images/venue/venue1.jpg",
    title: 'Cozy Venue',
    price: 10000000,
    isFavorite: 0,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'A Cozy Venue with Calm Ambience'",
  ),
  Venue(
    img: "assets/images/venue/venue2.jpg",
    title: 'Luxury Venue',
    price: 12000000,
    isFavorite: 1,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'A Luxury Venue with Calm Ambience'",
  ),
  Venue(
    img: "assets/images/venue/venue3.jpg",
    title: 'Comfy Venue',
    price: 9000000,
    isFavorite: 0,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'A Comfy Venue with Calm Ambience'",
  )
];

class Dress {
  final String img;
  final String title;
  final int price;
  final int isFavorite;
  final String desc;
  final String shortDesc;

  Dress({
    this.img = '',
    this.title = '',
    this.price = 0,
    this.isFavorite = 0,
    this.desc = "",
    this.shortDesc = "",
  });
}

List<Dress> dress = [
  Dress(
    img: "assets/images/dress/dress1.jpg",
    title: 'Bio One Wedding',
    price: 10000000,
    isFavorite: 1,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'Great Couple Suit/Dress Wedding'",
  ),
  Dress(
    img: "assets/images/dress/dress2.jpg",
    title: 'The Luxury One',
    price: 12000000,
    isFavorite: 1,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'Lovely Couple Wedding Dress/Suit'",
  ),
  Dress(
    img: "assets/images/dress/dress3.jpg",
    title: 'Magestic Love',
    price: 9000000,
    isFavorite: 0,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'Elegant and Comfy Dress/Suite'",
  ),
  Dress(
    img: "assets/images/dress/men'sdress.jpg",
    title: 'Men Suite',
    price: 9000000,
    isFavorite: 0,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'A Signature of Wedding Dress/Suit'",
  ),
  Dress(
    img: "assets/images/dress/women'sdress.jpg",
    title: 'Women Dress',
    price: 9000000,
    isFavorite: 1,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'A Signature of Wedding Dress/Suit'",
  )
];

class Catering {
  final String img;
  final String title;
  final int price;
  final int isFavorite;
  final String desc;
  final String shortDesc;

  Catering({
    this.img = '',
    this.title = '',
    this.price = 0,
    this.isFavorite = 0,
    this.desc = "",
    this.shortDesc = "",
  });
}

List<Catering> catering = [
  Catering(
    img: "assets/images/catering/indonesianCatering.jpg",
    title: 'Classic Indonesian Catering',
    price: 17000,
    isFavorite: 1,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'a Classic Tradisional Indonesian Dish'",
  ),
  Catering(
    img: "assets/images/catering/mexicanCatering.jpg",
    title: 'Classic Mexican Catering',
    price: 19000,
    isFavorite: 1,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'a Classic Traditional Mexican Dish'",
  ),
  Catering(
    img: "assets/images/catering/indianCatering.jpg",
    title: 'Classic Indian Catering',
    price: 17000,
    isFavorite: 0,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'a Classic Traditional Indian Dish'",
  ),
  Catering(
    img: "assets/images/catering/dessertCatering.jpg",
    title: 'Various Dessert',
    price: 15000,
    isFavorite: 0,
    desc:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
    shortDesc: "'Sweet Fresh Dessert Food'",
  )
];

class ActivityBanner {
  final String img;
  final String title;

  ActivityBanner({
    this.img = '',
    this.title = '',
  });
}

List<ActivityBanner> activityBanner = [
  ActivityBanner(img: "assets/images/activitybanner/photo.jpg"),
  ActivityBanner(img: "assets/images/activitybanner/sewing.jpg"),
  ActivityBanner(img: "assets/images/activitybanner/team.jpg"),
  ActivityBanner(img: "assets/images/activitybanner/cook.jpg"),
];

class ActivityBanner2 {
  final String img;
  final String title;
  final bool isNoted;

  ActivityBanner2({this.img = '', this.title = '', this.isNoted = false});
}

List<ActivityBanner2> activityBanner2 = [
  ActivityBanner2(
      img: "assets/images/activitybanner/meeting1.jpg",
      title: "",
      isNoted: false),
  ActivityBanner2(
      img: "assets/images/activitybanner/meeting2.jpg", isNoted: false),
  ActivityBanner2(
      img: "assets/images/activitybanner/meeting3.jpg", isNoted: false),
];

class ActivityBanner3 {
  final String img;
  final String title;
  final bool isNoted;

  ActivityBanner3({this.img = '', this.title = '', this.isNoted = false});
}

List<ActivityBanner3> activityBanner3 = [
  ActivityBanner3(
      img: "assets/images/activitybanner/colab1.jpg",
      title: "",
      isNoted: false),
  ActivityBanner3(
      img: "assets/images/activitybanner/colab2.jpg", isNoted: false),
  ActivityBanner3(
      img: "assets/images/activitybanner/colab3.jpg", isNoted: false),
];
