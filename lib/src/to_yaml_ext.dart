extension ListToYaml on List{
  String toYaml(){
    return _toYaml(this, 0);
  }

  static String _toYaml(List element, int level){
    var res = '';
    for (var i in element){
      var padding = '  '* level + '- ';
      if (i is Map){
        res += padding + MapToYaml._toYaml(i,level+1,true);
      }
      if (i is List){
        if (i.isEmpty){
          res += '$padding[]\n';
          continue;
        }
        res += padding + '\n';
        res += _toYaml(i,level+1);
      }
      if (!(i is List) && !(i is Map)) {
        if (i is String) {
          res += '$padding|-\n';
          var space = '  '* (level + 1);
          res += space;
          var str = i.replaceAll('\n', '\n$space');
          res += str;
        } else {
          res += padding + '$i';
        }
        res +='\n';
      }
    }
    return res;
  }
}

extension MapToYaml on Map{
  String toYaml(){
    return _toYaml(this, 0);
  }

  static String _toYaml(Map element, int level, [bool ignoreLevel = false]){
    var res = '';
    for (var i in element.keys){
      res += '  '*level * (ignoreLevel ? 0 : 1) + '$i:';
      ignoreLevel = false;
      if (element[i] is Map){
        res += '\n' + _toYaml(element[i], level+1);
      }
      if (element[i] is List){
        if ((element[i] as List).isEmpty){
          res += ' []\n';
          continue;
        }
        res += '\n' + ListToYaml._toYaml(element[i], level);
      }
      if (!(element[i] is List) && !(element[i] is Map)){
        if (element[i] is String) {
          res += ' |-\n';
          var space = '  '* (level + 1);
          res += space;
          var str = (element[i] as String).replaceAll('\n', '\n$space');
          res += str;
        } else {
          res += ' ${element[i]}';
        }
        res += '\n';
      }
    }
    return res;
  }
}