import 'dart:io';
import 'dart:isolate';

//main():主isolate,类似主线程
void main(List<String> arguments) {
  print('main----start');
  //消息接收器
  var receivePort = ReceivePort();
  receivePort.listen((message) {
    //监听sendPort发送的消息
    print('receivePort接收到 : $message');
  });
  receivePort.sendPort.send('1');
  receivePort.sendPort.send('22');
  receivePort.sendPort.send(333);
  // receivePort.close();
  print('main----end');
}
