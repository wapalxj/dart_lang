void main(List<String> arguments) {
  //运行时常量
  final i = 1;
  // i=2;

  //编译期常量
  const c = 100;
  // c=11;

  //时间节点不一样
  //运行时常量不可赋值给编译期常量
  // const z = i;

  //编译期常量可以赋值给运行时常量
  final f = c;

  const z2 = c + 1;

  print(i);
  print(c);
}
