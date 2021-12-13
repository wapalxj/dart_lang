import 'dart:io';

void main(List<String> arguments) {
  Stream<List<int>> stream = File('bin/c04_async/test.json').openRead();
  var fileDst = File('bin/c04_async/test222.json');

  var streamSubscription = stream.listen((List<int> event) {
    print('event');
  });
  var openWrite = fileDst.openWrite();
  streamSubscription.onData((data) {
    //会覆盖listen()
    var string=String.fromCharCodes(data);
    // print('onData 读到了 $string');
    //写出文件
    openWrite.add(data);
    print('onData 读到了');
  });

  streamSubscription.onDone(() {
    print('onDone 读完了');
  });
  streamSubscription.pause();
  streamSubscription.resume();
  // streamSubscription.cancel();
}
