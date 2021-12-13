import 'Point.dart';

void main(List<String> arguments) {
  var p = Point(1, 1);
  var p2 = Point();
  // print(p._x);

  print('p.y===${p.y}');
  print('p.x===${p.getMyX}');
  print('p.z===${p.z}');
  print('p.z===${p.getMyZ}');

  var pFromMap = Point.fromMap(null);
  print(pFromMap.y);

  print('===========常量构造函数===========');

  //new常量构造函数，创建的对象，和普通对象没有区别
  var ip1 = ImmutablePoint(1, 2);
  //new const+常量构造函数，
  // 创建的对象，参数相同，则对象相同
  var ip2 = const ImmutablePoint(1, 2);
  var ip3 = const ImmutablePoint(666, 888);
  var ip4 = const ImmutablePoint(1, 2);

  print('ip1==ip2:${ip1 == ip2}'); //false
  print('ip2==ip3:${ip2 == ip3}'); //false
  print('ip2==ip4:${ip2 == ip4}'); //true

  //单例
  var holder;
  holder=Holder.get();
  holder=Holder.get2();
  holder=Holder.instance;
  //方式4：factory+const构造
  holder=new Holder();

  print('===========操作符重载===========');
  print('p+p2==${p+p2}');
  print('p-p2==${p-100}');

}
