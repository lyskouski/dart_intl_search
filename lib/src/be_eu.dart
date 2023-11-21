// Copyright 2023 The terCAD team. All rights reserved.
// Use of this source code is governed by a MIT license
// that can be found in the LICENSE file.

import 'basic.dart';

const belarusianToLatin = {
  'А': 'a',
  'Б': 'b',
  'В': 'v',
  'Г': 'g',
  'Ґ': 'g̀',
  'Д': 'd',
  'Е': 'e',
  'Ё': 'ë',
  'Ж': 'ž',
  'З': 'z',
  'І': 'ì',
  'Й': 'j',
  'К': 'k',
  'Л': 'l',
  'М': 'm',
  'Н': 'n',
  'О': 'o',
  'П': 'p',
  'Р': 'r',
  'С': 's',
  'Т': 't',
  'Тс': 'u',
  'У': 'ǔ',
  'Ў': 'f',
  'Ф': 'h',
  'Х': 'c',
  'Ц': 'č',
  'Ч': 'š',
  'Ш': 'ʼ',
  'ʼ': '',
  'Ы': 'y',
  'Ь': 'ʹ',
  'Э': 'è',
  'Ю': 'û',
  'Я': 'â',
  'И': 'ī',
  'Щ': 'shch',
  'Ъ': 'ʺ',
  'Ѣ': 'ě',
  'а': 'a',
  'б': 'b',
  'в': 'v',
  'г': 'g',
  'ґ': 'g̀',
  'д': 'd',
  'е': 'e',
  'ё': 'ë',
  'ж': 'ž',
  'з': 'z',
  'і': 'ì',
  'й': 'j',
  'к': 'k',
  'л': 'l',
  'м': 'm',
  'н': 'n',
  'о': 'o',
  'п': 'p',
  'р': 'r',
  'с': 's',
  'т': 't',
  'тс': 'u',
  'у': 'ǔ',
  'ў': 'f',
  'ф': 'h',
  'х': 'c',
  'ц': 'č',
  'ч': 'š',
  'ш': 'ʼ',
  'ы': 'y',
  'ь': 'ʹ',
  'э': 'è',
  'ю': 'û',
  'я': 'â',
  'и': 'ī',
  'щ': 'shch',
  'ъ': 'ʺ',
  'ѣ': 'ě',
};

String be(String value) {
  for (var e in belarusianToLatin.entries) {
    value = value.replaceAll(e.key, e.value);
  }
  return basic(value);
}