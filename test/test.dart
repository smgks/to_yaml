import 'package:yaml/yaml.dart';
import 'package:to_yaml/to_yaml.dart';
import 'package:test/test.dart';


void main() {
  test('case0', () {
    var test0 = [{'aaa':'qqq','caa':{'bbb':{'ttt':'ttt','yyy':'yyy','array':['zxc','qwe']}}},'asd'];
    var test0Temp = test0.toYaml();
    print(test0Temp);
    var test0Result = loadYaml(test0.toYaml());
    print(test0Result);
    print(test0);
    expect(test0.toString(), equals(test0Result.toString()));
  });

  test('case1', () {
    var test1 = {'aaa':'qqq','caa':{'bbb':{'ttt':'ttt','yyy':'yyy','array':['zxc','qwe']}}};
    var test1Temp = test1.toYaml();
    print(test1Temp);
    var test1Result = loadYaml(test1.toYaml());
    print(test1Result);
    print(test1);
    expect(test1.toString(), equals(test1Result.toString()));
  });

  test('case2', () {
    var test2 = {'aaa':'qqq','caa':{'bbb':{'ttt':'ttt','yyy':'yyy','array':['zxc',{'zzz':'zzz','mmm':'mmm'},['111','112']]}}};
    var test2Temp = test2.toYaml();
    print(test2Temp);
    var test2Result = loadYaml(test2Temp);
    print(test2Result);
    print(test2);
    expect(test2.toString(), equals(test2Result.toString()));
  });
}