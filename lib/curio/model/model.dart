import 'package:flutter/material.dart';

class Category {
  String title;
  int periodW;
  int money;
  double rating;
  String imagePath;

  Category({
    this.title = '',
    this.imagePath = '',
    this.periodW = 0,
    this.money = 0,
    this.rating = 0.0,
  });

  static List<Category> categoryList = [
    Category(
      imagePath:
          'https://i.etsystatic.com/15552744/r/il/45b289/1668951953/il_794xN.1668951953_xu6m.jpg',
      title: 'Antique African Maasai Kenya Leather Shield',
      periodW: 24,
      money: 750,
      rating: 4.9,
    ),
    Category(
      imagePath:
          'https://i.etsystatic.com/5264118/r/il/4c2560/2034766575/il_794xN.2034766575_aqcp.jpg',
      title: 'Kenyan Nyatiti African Instrument',
      periodW: 2,
      money: 218,
      rating: 4.6,
    ),
    Category(
      imagePath:
          'https://i.etsystatic.com/6083844/r/il/95bf08/2010993967/il_794xN.2010993967_t86j.jpg',
      title: 'Acrylic Painting musical',
      periodW: 7,
      money: 75,
      rating: 4.3,
    ),
    Category(
      imagePath:
          'https://i.etsystatic.com/17755157/r/il/33b254/2058097725/il_794xN.2058097725_nms5.jpg',
      title: 'Lion head carved Walking cane',
      periodW: 6,
      money: 500,
      rating: 4.9,
    ),
  ];

  static List<Category> popularCourseList = [
    Category(
      imagePath:
          'https://i.etsystatic.com/5682008/r/il/90c97a/965365592/il_794xN.965365592_ehpz.jpg',
      title: 'Cleopatra\'s Earrings',
      periodW: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath:
          'https://i.etsystatic.com/11254531/r/il/8f7a68/1097066248/il_794xN.1097066248_r5bz.jpg',
      title: 'Vintage Handmade African Gunpowder Flask Pouch Necklace ',
      periodW: 28,
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath:
          'https://i.etsystatic.com/16717422/r/il/4733f5/1543347635/il_794xN.1543347635_oy7l.jpg',
      title: 'Vintage One of a Kind Hand Carved Napkin Holders ',
      periodW: 12,
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath:
          'https://i.etsystatic.com/10028832/r/il/deddac/2081247992/il_794xN.2081247992_pjt0.jpg',
      title: 'Tidikelt Arrowhead',
      periodW: 2,
      money: 20,
      rating: 4.9,
    ),
  ];
}

class CurioThemeExt {
  CurioThemeExt._();

  static const Color notWhite = Color(0xFFEDF0F2);
  static const Color nearlyWhite = Color(0xFFFFFFFF);
  static const Color nearlyBlue = Color(0xFF00B6F0);
  static const Color nearlyBlack = Color(0xFF213333);
  static const Color grey = Color(0xFF3A5160);
  static const Color dark_grey = Color(0xFF313A44);

  static const Color darkText = Color(0xFF253840);
  static const Color darkerText = Color(0xFF17262A);
  static const Color lightText = Color(0xFF4A6572);
  static const Color deactivatedText = Color(0xFF767676);
  static const Color dismissibleBackground = Color(0xFF364A54);
  static const Color chipBackground = Color(0xFFEEF1F3);
  static const Color spacer = Color(0xFFF2F2F2);

  static const TextTheme textTheme = TextTheme(
    display1: display1,
    headline: headline,
    title: title,
    subtitle: subtitle,
    body2: body2,
    body1: body1,
    caption: caption,
  );

  static const TextStyle display1 = TextStyle(
    // h4 -> display1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 36,
    letterSpacing: 0.4,
    height: 0.9,
    color: darkerText,
  );

  static const TextStyle headline = TextStyle(
    // h5 -> headline
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 0.27,
    color: darkerText,
  );

  static const TextStyle title = TextStyle(
    // h6 -> title
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.bold,
    fontSize: 16,
    letterSpacing: 0.18,
    color: darkerText,
  );

  static const TextStyle subtitle = TextStyle(
    // subtitle2 -> subtitle
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: -0.04,
    color: darkText,
  );

  static const TextStyle body2 = TextStyle(
    // body1 -> body2
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 14,
    letterSpacing: 0.2,
    color: darkText,
  );

  static const TextStyle body1 = TextStyle(
    // body2 -> body1
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 16,
    letterSpacing: -0.05,
    color: darkText,
  );

  static const TextStyle caption = TextStyle(
    // Caption -> caption
    fontFamily: 'WorkSans',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    letterSpacing: 0.2,
    color: lightText, // was lightText
  );
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
