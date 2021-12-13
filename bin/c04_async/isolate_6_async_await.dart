import 'dart:developer';
import 'dart:io';

void main(List<String> arguments) {


  Future.wait([readFileAsync2(),readFileAsync3()]);
  // readFileAsync3();
  // readFileAsync2();

  readFileAsync().then((value) {
    print("readFile()");
  });

  //
  // readFile1((s) {
  //   print("readFile1()");
  // });
  //
  // readFile0().then((value) {
  //   print("readFile0()");
  // });

  print("main =====");
}


Future<String> readFileAsync3() async {
  //异步代码，同步写
  //await 代码会阻塞,所以结合async,让readFile方法变成异步的
  var f1='bin/c04_async/test.json';
  var f2='bin/c04_async/test222.json';
  var t1=DateTime.now().millisecond;
  await Future.wait([readFile(f1),readFile(f2)]).then((value) {
    print('readFileAsync333333333=======');
  });
  print('readFileAsync333333333===============${DateTime.now().millisecond-t1} ');
  return "";
}


//async 只能返回Future或者void
Future<String> readFileAsync2() async {
  //异步代码，同步写
  //await 代码会阻塞,所以结合async,让readFile方法变成异步的
  var f1='bin/c04_async/test.json';
  var f2='bin/c04_async/test222.json';
  var t1=DateTime.now().millisecond;
  await Future.wait([File(f1).readAsString(),File(f2).readAsString()]).then((value) {
    print('readFile222 =====');
  });
  print('readFileAsync2222222===============${DateTime.now().millisecond-t1} ');
  return "";
}

//async 只能返回Future或者void
Future<String> readFileAsync() async {
  //异步代码，同步写
  //await 代码会阻塞,所以结合async,让readFile方法变成异步的
  var t1=DateTime.now().millisecond;
  var content = await File('bin/c04_async/test.json').readAsString();
  var content2 = await File('bin/c04_async/test222.json').readAsString();
  print('readFileAsync===============${DateTime.now().millisecond-t1} ');
  return "";
}

Future<String> readFile(String path) async{
  return await File(path).readAsString();
}


//非 async
void readFile1(void callback(String string)) {
  var future = File('bin/c04_async/test.json').readAsString();
  future.then((value) {
    callback(value);
  });
}

//非 async
Future<String> readFile0() {
  var future = File('bin/c04_async/test.json').readAsString();
  return future.then((value) {
    return value;
  });
}
