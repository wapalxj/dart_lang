import 'dart:io';

void main(List<String> arguments) {
  try {
    test();
  } catch (e, s) {
    print(e.runtimeType); //_Exception
    print(s.runtimeType); //_StackTrace
  } finally {
    print('finally');
  }
  print('=============================');

  try {
    test();
  } on FormatException catch (e, s) {
    print(e.runtimeType); //_Exception
    print(s.runtimeType); //_StackTrace
  } on IOException catch (e, s) {
    print(e.runtimeType); //_Exception
    print(s.runtimeType); //_StackTrace
  } on Exception catch (e, s) {
    print(e.runtimeType); //_Exception
    print(s.runtimeType); //_StackTrace
  } on int catch (e, s) {
    print(e.runtimeType); //_Exception
    print(s.runtimeType); //_StackTrace
  }
}

void test() {
  throw 100; //可以抛出int类型
  throw "100"; //可以抛出String类型
  throw new Exception("exegeses");
}
