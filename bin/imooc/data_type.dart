void main(List<String> arguments) {
  // numType();
  // stringType();
  // boolType();
  // listType();
  // mapType();
  type();
}


void type() {
  dynamic x="vero";
  print(x.runtimeType);
  print(x);
  //编译,并不会报错
  x.foo();
}

void mapType() {
  Map names = {"key1": "vero", "key2": "vnix"};
  print(names);

  Map ages = {};
  ages['vero'] = 16;
  ages['vnix'] = 18;
  print(ages);

  //遍历
  names.forEach((key, value) {
    // print("$key==$value");
  });

  names.map((key, value) {
        return MapEntry(value, key);
      })
      .map((key, value) => MapEntry(key, value))
      .forEach((key, value) {
        // print("$key==$value");
      });

  names.keys.forEach((element) {
    print("$element==${names[element]}");
  });
}

void listType() {
  List list = [1, 2, 3, 4, 5, 6];
  List<String> list2 = [",", ""];

  // / the list is a fixed-length list of length zero.
  // List<int> list3= new List.empty();

  List<int> list3 = new List.empty(growable: true);
  list3.add(50);

  List<int> list4 = new List.generate(3, (index) => index * 2);

  print(list);
  print(list2);
  print(list3);
  print(list4);

  //遍历
  for (int i = 0; i < list.length; i++) {}
  for (var i in list) {}
  list.forEach((element) {});
}

void boolType() {
  bool success = true;
  bool fail = false;

  print(success && fail);
  print(success || fail);
}

void stringType() {
  String str1 = "vero";
  print("string " + str1);

  //常用方法
  String str2 = "v";
  print(str1.substring(0, 2));
  print(str1.indexOf(str2));
  print(str1.replaceAll('v', 'vvvvvv'));
}

void numType() {
  //num 数字类型的父类
  //子类double
  //子类int

  num n1 = -10.0;
  num n2 = 10;
  int i1 = 10;
  double d1 = 10.0;
  print("n1==$n1,n2==$n2,i1==$i1,d1==$d1");
  print("n1.abs()==${n1.abs()}");
  print("n1.toInt()==${n1.toInt()}");
  print("n1.toDouble()==${n1.toDouble()}");
}
