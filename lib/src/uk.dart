// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'basic.dart';

const ukrainianToLatin = {
  "а": "a",
  "б": "b",
  "в": "v",
  "г": "h",
  "ґ": "g",
  "д": "d",
  "е": "e",
  "є": "ie",
  "ж": "zh",
  "з": "z",
  "и": "y",
  "і": "i",
  "ї": "i",
  "й": "i",
  "к": "k",
  "л": "l",
  "м": "m",
  "н": "n",
  "о": "o",
  "п": "p",
  "р": "r",
  "с": "s",
  "т": "t",
  "у": "u",
  "ф": "f",
  "х": "kh",
  "ц": "ts",
  "ч": "ch",
  "ш": "sh",
  "щ": "shch",
  "ь": "",
  "ю": "iu",
  "я": "ia",
};

String uk(String value) {
  for (var e in ukrainianToLatin.entries) {
    value = value.toLowerCase().replaceAll(e.key, e.value);
  }
  return basic(value);
}
