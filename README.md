# Internationalized / Localized Search

[![Test Status](https://github.com/lyskouski/dart_intl_search/actions/workflows/test.yml/badge.svg)](https://github.com/lyskouski/dart_intl_search/actions/workflows/test.yml)
[![Build Status](https://github.com/lyskouski/dart_intl_search/actions/workflows/build.yml/badge.svg)](https://github.com/lyskouski/dart_intl_search/actions/workflows/build.yml)
<a href="https://www.buymeacoffee.com/lyskouski"><img height="20" src="https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=lyskouski&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff" /></a>

Extension for a String comparison with a localization transcription

## Sample

```dart
'Café au Lait'.transcription(Locale('fr')) // cafe au lait
'Прывiтаньне'.transcription(Locale('be')) // pryvitanne
'生物多样性可持续发展'.transcription(Locale('zh')) // shngwuk

'多'.isPartOf('生物多样性可持续发展', Locale('zh')) // true

'脖'.isEqualTo('bo') // true
```

In addition to thanking, you may [treat us to :coffee:](https://www.buymeacoffee.com/lyskouski).
