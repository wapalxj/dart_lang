import 'dart:async';
import 'dart:io';

void main(List<String> arguments) {
  testBroadcastStream();
  // test2();
  // test3();
}

void test3() {
  //直接创建一个广播
  var streamController = StreamController.broadcast();
  //发送一条广播
  //先发再listen是接收不到的
  streamController.add("1");
  streamController.stream.listen((event) {
    print(event);
  });
  //这条能接收到
  streamController.add("222222");
}

void test2() {
  var stream = Stream.fromIterable([1, 2, 3, 4]);
  //由单订阅转换来的广播
  var asBroadcastStream = stream.asBroadcastStream();
  asBroadcastStream.listen((event) {
    print("listen1====$event");
  });

  asBroadcastStream.listen((event) {
    print("listen22222====$event");
  });
}

void testBroadcastStream() {
  Stream<List<int>> stream = File('bin/c04_async/test.json').openRead();

//有订阅者后不能再广播模式
// stream.listen((_) {});

//广播模式
  var asBroadcastStream = stream.asBroadcastStream();

  asBroadcastStream.listen((event) {
    print("listen1");
  });

  asBroadcastStream.listen((event) {
    print("listen22222");
  });
}
