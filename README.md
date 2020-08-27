Simple package to generate yaml from Map.

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
