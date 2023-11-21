// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

library dart_intl_search;

import 'dart:ui';

import 'src/basic.dart';
import 'src/be_eu.dart';
import 'src/zh_cn.dart';

extension ColorExt on String {
  // Verify that transcriptions are equal
  isEqualTo(String value, Locale intl) =>
      value.transcription(intl) == transcription(intl);

  // Check if transcriptions match
  isPartOf(String value, Locale intl) =>
      value.transcription(intl).contains(transcription(intl));

  // Convert string to its transcription
  String transcription(Locale intl) => switch (intl.languageCode) {
        'zh' => zhCN(this),
        'be' => be(this),
        _ => basic(this),
      };
}
