import 'dart:ui';

import 'package:dart_intl_search/dart_intl_search.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final testCases = [
    (from: 'Café au Lait', locale: 'fr', to: 'cafe au lait'),
    (from: 'Прывiтаньне', locale: 'be', to: 'pryvitanne'),
    (from: 'Pryvitańne', locale: 'be', to: 'pryvitanne'),
    (from: '生物多样性可持续发展', locale: 'zh', to: "shngwuk"),
  ];
  for (var v in testCases) {
    test('Check $v', () {
      assert(v.from.transcription(Locale(v.locale)) == v.to);
    });
  }
}
