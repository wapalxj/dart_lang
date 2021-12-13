void fun(int param) {
  print('fun($int)');
}

void fun2(Function param) {
  print('fun2()');
  param();
}

// void fun3(void f(int i,int j)){
//   print('fun3()');
//   f(1,1);
// }

//定义一个F类型
typedef void F(int i, int j);
// typedef F = void Function(int i,int j);

void fun3(F param) {
  print('fun3()');
  param(1, 1);
}

void main(List<String> arguments) {
  Function f = fun;
  f(1);
  fun2(() {
    //匿名方法
    print('fun2()参数：匿名方法');
  });

  fun3((int i, int j) {
    print('fun3()参数：匿名方法');
  });
}

///////应用：接口回调

//java ，通过传递对象来调用回调方法
abstract class onClickListener {
  void onClick(int i);
}

class Button {
  void setOnclickListener(onClickListener listener) {
    listener.onClick(100);
  }
}

//dart,直接传递方法来调用
typedef void onClick(int i);

void setOnclickListener(onClick listener) {
  listener(100);
}
