import 'dart:io';

void main(List<String> arguments) {
  //延迟3秒
  Future.delayed(Duration(seconds: 3)).then((value) {
    print('delayed--$value');
  });

  //读取File
  var readFuture = File('bin/c04_async/test.json').readAsString();
  readFuture.then((String value) {
    print('readFuture1--$value');
    return value; //包装成一个Future<String>(value)往下继续传
  }).then((String value) {
    print('readFuture2--$value');
    return 1; //包装成一个Future<int>(1)往下继续传
  }).then((int value) {
    print('readFuture3--$value');
    return true; //包装成一个Future<bool>(true)往下继续传
  }).whenComplete(() {
    print('Complete------');
  }).catchError((e, s) {
    print('catchError--$e');
    print('catchError--$s');
  });

  //wait
  //一组任务执行完成后，统一处理
  Future.wait([
    Future.delayed(Duration(seconds: 1)),
    Future.delayed(Duration(seconds: 3))
  ]).then((value){
    print('wait');
  });

  //forEach
  Future.forEach([1,2,3,4], (element) {
    print('forEach  $element');
  });
}
