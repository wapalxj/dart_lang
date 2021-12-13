
import 'Point.dart';

void main(List<String> arguments) {
  //运算符重载
  var p1 = Point(10, 20);
  var p2 = Point(100,2222);
  var p1p2=p1+p2;

  print('(p1+p2).x==${p1p2.getMyX}');
  print('(p1+p2).y==${p1p2.y}');
  print('p1-p2==${p1-1}');
}