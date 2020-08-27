Simple package to generate yaml from Map.

[![Pub Package](https://img.shields.io/pub/v/to_yaml.svg)](https://pub.dev/packages/to_yaml/changelog)

Example:
```dart
import 'package:to_yaml/to_yaml.dart';


void main() {
  var mapData = {
    'aaa': 'qqq',
    'caa':{
      'bbb':{
        'ttt':'ttt',
        'yyy':'yyy',
        'array': ['zxc','qwe']
      }
    }
  };
  var yamlText = mapData.toYaml();
  print(yamlText);
}
```
