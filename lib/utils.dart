import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Style {
  static const Color primaryColor = Color(0xFF00236f);
  static const Color textColor = Color(0xFF1C1B1F);
  static const Color bgColor = Color(0xFFf8f9ff);
  static const Color orangeColor = Color(0xFF855300);
  static const Color kakiColor = Color(0xFF00311f);

  static TextStyle textStyle = GoogleFonts.inter(
    fontSize: 16, color: textColor, fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle1 = GoogleFonts.inter(
    fontSize: 28, color: textColor, fontWeight: FontWeight.w600,
  );
  static TextStyle headLineStyle2 = GoogleFonts.inter(
    fontSize: 22, color: textColor, fontWeight: FontWeight.w500,
  );
  static TextStyle headLineStyle3 = GoogleFonts.inter(
    fontSize: 16, fontWeight: FontWeight.w400,
  );
  static TextStyle headLineStyle4 = GoogleFonts.inter(
    fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500,
  );
}

class AppLayout {
  static getSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double getScreenHeigth() {
    final window = WidgetsBinding.instance.window;
    final physical = window.physicalSize;
    final dpr = window.devicePixelRatio;
    if (physical.isEmpty || dpr == 0) return 0.0;
    return physical.height / dpr;
  }

  static double getScreenWidth() {
    final window = WidgetsBinding.instance.window;
    final physical = window.physicalSize;
    final dpr = window.devicePixelRatio;
    if (physical.isEmpty || dpr == 0) return 0.0;
    return physical.width / dpr;
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
