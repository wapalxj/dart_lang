import 'package:dio/dio.dart';

void main(List<String> arguments) {
  // test();
  getHttp();
  print('main----start');
}

void test() {
  var dio = Dio();
  var future = dio.get('http://www.baidu.com');
  future.then((value) {
    print(value);
  });
}

void getHttp() async {
  try {
    var response = await Dio().get('http://www.baidu.com');
    print(response.data.runtimeType);
    print(response);
  } catch (e) {
    print(e);
  }
}
