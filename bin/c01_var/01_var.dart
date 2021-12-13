

void main(List<String> arguments) {
  int i=6666;
  String s;
  Object o="vero";
  o=13;

  int a=0;

  //声明赋值的一刻就决定了类型
  //这里编译后类型是int
  var ii=10;
  // ii="sadsad";

  //动态类型,运行时候确定类型
  //这里编译后类型还是dynamic
  dynamic d=10;
  d="sadsad";

  //先声明再赋值就可以改变类型
  var v;//object
  v=1000;
  print(v);
  v='vero';
  print(v);
}