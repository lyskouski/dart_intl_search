// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

library dart_intl_search;

import 'dart:ui';

import 'src/basic.dart';
import 'src/be_eu.dart';
import 'src/zh_cn.dart';

extension ColorExt on String {
  isEqualTo(String value, Locale intl) =>
      value.transcription(intl) == transcription(intl);

  isPartOf(String value, Locale intl) =>
      value.transcription(intl).contains(transcription(intl));

  String transcription(Locale intl) => switch (intl.languageCode) {
        'zh' => zhCN(this),
        'be' => be(this),
        _ => basic(this),
      };
}
