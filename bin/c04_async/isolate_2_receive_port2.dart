import 'dart:io';
import 'dart:isolate';

//main():主isolate,类似主线程
void main(List<String> arguments) {
  print('main----start');
  //消息接收器
  var mainReceivePort = ReceivePort();
  //把消息接收器中的 消息发送器 发给子isolate
  Isolate.spawn(entryPoint, mainReceivePort.sendPort);

  mainReceivePort.listen((message) {
    print('mainReceivePort接收到 : $message');
    //监听子isolate sendPort发送的消息
    if ((message is SendPort)) {
      //拿到子isolate发送器
      //发送消息给子isolate
      print('主isolate向子发送消息:');
      message.send('主isolate的消息体');
    }
  });

  // sleep(Duration(seconds: 10));
  // receivePort.close();
  print('main----end');
}

//子isolate,类似子线程
void entryPoint(SendPort mainSendPort) {
  print('子isolate向主发送消息:');
  //向主isolate发送消息
  mainSendPort.send('子isolate的消息体');

  //创建子消息接收器
  var subReceivePort = ReceivePort();
  //把子发送器 发送给主isolate
  mainSendPort.send(subReceivePort.sendPort);


  subReceivePort.listen((message) {
    print('subReceivePort接收到 : $message');
  });
}
