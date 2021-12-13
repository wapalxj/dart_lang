// class _Point {//私有类
class Point {
  //_开头，为私有属性,相当于private
  int? _x;
  int? y;
  int? _z=100;

  //构造
  // Point();//dart没有方法重载
  //dart没有方法重载
  //编译报错：私有属性不能作为可选命名构造参数
  // Point({this._x=0, this.y});
  Point([this._x=0, this.y]);

  //命名构造方法
  Point.X(this._x);
  Point.Y(this.y);
  Point.of(this._x, this.y);

  //参数初始化列表
  //初始化属性x和y
  Point.XY(): _x = 1, y = 2 {}

  //参数初始化列表
  //初始化属性x和y
  Point.fromMap(Map? map): _x = map?['x'], y = map?['y'] {}

  //set get
  //公有的成员自带get/set
  //自定义get/set只能在私有变量上
  int get z => _z ?? 0;

  int get getMyZ {
    return _z ?? 0;
  }

  void setMyZ(int z) {
    _z = z;
  }

  //方法只有一个表达式的时候，可以使用=>
  int get getMyX => _x ?? 0;

  set setMyX(int x) => _x = x;

  //运算符重载,参数类型任意
  Point operator +(Point other) {
    var point = Point();
    point.setMyX = this.getMyX + other.getMyX;
    point.y = (this.y ?? 0) + (other.y ?? 0);
    return point;
  }

  //运算符重载,参数类型任意
  String operator -(int i) {
    return "verooooo point";
  }

  @override
  String toString() {
    return 'Point($_x,$y)';
  }
}

class View {
  View(int context, int attr);

  //重定向构造方法
  View.a(int context) : this(context, 0);

//Java
// View(int context, int attr){
//   this(context,0);
// }
}

//常量构造方法：
class ImmutablePoint {
  final int x;
  final int y;

  //常量构造方法：参数若是成员变量，则成员变量必须是final
  const ImmutablePoint(this.x, this.y);
}

class Manager {
  int i=0;

  static Manager get2(){
    // this.i;//错误
    return new Manager();
  }

  //类似于static
  //这里使用命名构造方法作为工厂构造方法
  //工厂构造方法:必须返回当前类实例
  factory Manager.get() {
    // this.i;//错误
    return new Manager();
  }
  //默认构造
  Manager();
}


//单例
//dart是单线程，不需要加锁
class Holder {
  static final Holder _instance = Holder._privateConstructor();

  //方式1：static
  static Holder get2() {
    return _instance;
  }

  //方式2：factory
  factory Holder.get() {
    return _instance;
  }

  //方式3：static field
  static final Holder instance = _instance;

  //方式4：factory+const构造
  factory Holder() => const Holder.one();
  const Holder.one();

  //私有化命名构造方法
  Holder._privateConstructor();
}
