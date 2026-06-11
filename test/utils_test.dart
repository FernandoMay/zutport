import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:zutlemane/utils.dart';

void main() {
  group('Style', () {
    test('primaryColor is defined', () {
      expect(Style.primaryColor, const Color(0xFF687daf));
    });

    test('textColor is defined', () {
      expect(Style.textColor, const Color(0xFF3b3b3b));
    });

    test('bgColor is defined', () {
      expect(Style.bgColor, const Color(0xFFeeedf2));
    });

    test('headLineStyle1 has correct fontSize', () {
      expect(Style.headLineStyle1.fontSize, 26);
    });

    test('headLineStyle3 is const', () {
      expect(Style.headLineStyle3.fontSize, 17);
    });
  });

  group('Seed Data', () {
    test('hotelList has 3 entries', () {
      expect(hotelList.length, 3);
    });

    test('hotelList entries have required keys', () {
      for (final hotel in hotelList) {
        expect(hotel.containsKey('image'), isTrue);
        expect(hotel.containsKey('place'), isTrue);
        expect(hotel.containsKey('destination'), isTrue);
        expect(hotel.containsKey('price'), isTrue);
      }
    });

    test('ticketList has 2 entries', () {
      expect(ticketList.length, 2);
    });

    test('ticketList entries have required structure', () {
      for (final ticket in ticketList) {
        expect(ticket['from'], isA<Map>());
        expect(ticket['to'], isA<Map>());
        expect(ticket['from']['code'], isA<String>());
        expect(ticket['to']['code'], isA<String>());
        expect(ticket['flying_time'], isA<String>());
        expect(ticket['date'], isA<String>());
        expect(ticket['number'], isA<int>());
      }
    });
  });
}
