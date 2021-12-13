void main(List<String> arguments) {
  fun1(10);
  fun1(1,2);

  print('================');
  fun2(i:10);
  fun2(j:10);
  fun2(i:1,j:2);

}

//可选参数
void fun1([int? i, int? j=20]) {
  print('fun1() $i === $j');
}

//可选命名参数
void fun2({int? i, int? j=20}) {
  print('fun2() $i === $j');
}

//可选命名参数required: 不设置默认值
void fun3({required int i, int? j=20}) {
  print('fun3() $i === $j');
}



