import 'dart:io';
import 'dart:isolate';
import 'isolate.dart';

void main(List<String> arguments) {
  var receivePort = ReceivePort();
  receivePort.listen((message) {
    //普通任务队列
    print('receivePort--$message');
  });

  Future.microtask(() {
    //微任务队列消息--优先级高
    print('microtask11111');
  });
  receivePort.sendPort.send('消息体11111');
  Future.microtask(() {
    print('microtask22222');
  });
  receivePort.sendPort.send('消息体222222');
}
