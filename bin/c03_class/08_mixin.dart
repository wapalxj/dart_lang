void main(List<String> arguments) {
  var c = C();
  var cc = CC();
  c.a();
  c.b();
  c.d();
}

//简写
class CC =Object with A,B;

//混合，类似于多继承
//如果A，B有重名的方法,优先级：1.自身  2.从with最右边查找,这里是B
//继承优先级：with最右边的
// class C with A, B {}
class C extends Object with A, B, D {
  @override
  void b() {
    super.b();
    print('C.b()');
  }
}

abstract class D{
  void d() {
    print('D.d()');
  }
}

class A {
  //被别的类minx的类，不能有显式的构造方法
  // A(){
  //
  // }

  void a() {
    print('A.a()');
  }
  void b() {
    print('A.b()');
  }
}

class B {
  void b() {
    print('B.b()');
  }
}

