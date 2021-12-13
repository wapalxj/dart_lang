import 'dart:io';
import 'dart:isolate';

void main(List<String> arguments) {
  // Isolate.spawn(entryPoint33, "");
  // Isolate.spawn(entryPoint44, "");

  Isolate.spawn(entryPoint55, "");
  Isolate.spawn(entryPoint66, "");
  print('main-----');

  while(true);
}


//子isolate,类似子线程
void entryPoint11(String msg) {
  print('entryPoint====1111111111');
  sleep(Duration(seconds: 10));
}

//子isolate,类似子线程
void entryPoint22(String msg) {
  print('entryPoint====22222222222');
  sleep(Duration(seconds: 10));
}

//子isolate,类似子线程
void entryPoint33(String msg) {
  print('entryPoint====3333333333');
  sleep(Duration(seconds: 1));
  while(true){
    sleep(Duration(seconds: 2));
    print('entryPoint33');
  }
}

//子isolate,类似子线程
void entryPoint44(String msg) {
  print('entryPoint====4444444444');
  sleep(Duration(seconds: 1));
  while(true){
    sleep(Duration(seconds: 3));
    print('entryPoint44');
  }
}



//子isolate,类似子线程
void entryPoint55(String msg) {
  print('entryPoint====555555555');
  sleep(Duration(seconds: 1));
  Future.doWhile(() {
    sleep(Duration(seconds: 3));
    print('entryPoint55');
    return true;
  });
}

//子isolate,类似子线程
void entryPoint66(String msg) {
  print('entryPoint====6666666666');
  sleep(Duration(seconds: 1));
  Future.doWhile(() {
    sleep(Duration(seconds: 3));
    print('entryPoint66');
    return true;
  });
}

