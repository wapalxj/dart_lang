void main() {
  //安全操作符 ?.
  String? myStr;
  print('myStr===${myStr?.length}');

  //类型转换和类型判断
  num i = 1;
  // int j=i;//error
  int j = i as int;

  print(j is int);
  print(j is! int);
  print(j);

  //赋值
  String? k;
  //安全赋值 如果k为null,则赋值为vero
  if(i==100){
    k ??= "vero";
  }

  //三目 如果k为null,则返回??后面的值
  var ii = k ?? "100";
  print('ii===$ii');

  //级联操作符
  //链式调用
  //会忽略返回值，返回类对象
  var v = Builder()
    ..a()
    ..b();
  print('v===$v');//v===Instance of 'Builder'
}
class Builder {
  void a() {}

  int b() {
    return 100;
  }
}
