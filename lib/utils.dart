import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Style {
  static Color primaryColor = const Color(0xFF687daf);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color bgColor = const Color(0xFFeeedf2);
  static Color orangeColor = const Color(0xFFF37B67);
  static Color kakiColor = const Color(0xFFD2bdd6);

  static TextStyle textStyle =
      TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 =
      TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 =
      TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 =
      const TextStyle(fontSize: 17, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(
      fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static getScreenHeigth() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static getHeigth(double pixels) {
    double x = getScreenHeigth() / pixels; // 844:200 = 4.22
    return getScreenHeigth() / x; // 844 : 4.22
  }

  static getWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}

/// lIst for image hotel
List<Map<String, dynamic>> hotelList = [
  {
    'image': 'one.png',
    'place': 'Open Space',
    'destination': 'London',
    'price': 25
  },
  {
    'image': 'two.png',
    'place': 'Global Will',
    'destination': 'London',
    'price': 40
  },
  {
    'image': 'three.png',
    'place': 'Tallest Building',
    'destination': 'Dubai',
    'price': 68
  },
];

/// lIst for ticket
List<Map<String, dynamic>> ticketList = [
  {
    'from': {'code': 'PRG', 'name': 'Parung'},
    'to': {'code': 'BGR', 'name': 'Bogor'},
    'flying_time': 'Pukul 08:30',
    'date': '1 MAY',
    'depature_time': 'Pukul 08:00 AM',
    'number': 29
  },
  {
    'from': {'code': 'PRKD', 'name': 'Parungkuda'},
    'to': {'code': 'SMI', 'name': 'Sukabumi'},
    'flying_time': 'Pukul 04 20',
    'date': '1 MAY',
    'depature_time': 'Pukul 07:00 AM',
    'number': 45
  },
];
