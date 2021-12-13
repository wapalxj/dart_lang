import 'dart:io';
import 'dart:isolate';

int? i;
//main():主isolate,类似主线程
void main(List<String> arguments) {
  print('main----start');
  i=10;
  Isolate.spawn(entryPoint, 'vero');
  sleep(Duration(seconds: 10));
  print('main----end');
}

//子isolate,类似子线程
void entryPoint(String msg) {
  sleep(Duration(seconds: 5));
  //isolate是线程隔离的
  //这里读不到i的值,i==null
  print('entryPoint====$i');
}
