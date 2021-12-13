void main(List<String> arguments) {
  //bool
  bool b = true;

  //数组
  // testList();

  //map
  // testMap();

  //Runes
  testRunes();

  // testSymbol();
}

//数组
void testList() {
  //已弃用
  // List<String> strs=new List();

  List<int> array = [1, 2, 3, 4, 5];

  var gen = List.generate(2, (index) => 0);

  //growable: 可变长
  // List<int> strs=List.empty(growable: true);

  //可变长
  List<int> strs = [];
  strs.add(0);
  strs.add(1);
  strs.add(2);
  var i = strs[0];

  //遍历
  for (var i = 0; i < strs.length; i++) {}
  for (var i in strs) {}

  strs.forEach((element) {
    print(element);
  });

  //const修饰的是[1,2,3]这个对象，表示这个对象不可变，不能add
  List<int> ints = const [1, 2, 3];
  ints = [];
  // ints.add(1);//运行报错

  //const修饰的是引用，这个变量不能再重新引用,这个对象也不可变，不能add
  const List<int> ints2 = [1, 2, 3];
  // ints2=[];
  // ints2.add(5);//运行报错
}

void testMap() {
  Map<int, int> map = {1: 1, 2: 2, 3: 3};
  map[2] = 200;
  print(map[2]);

  // var map1 = const {1: 'vero', 2: 'vnix'};
  var map1 = {1: 'vero', 2: 'vnix'};
  map1[44] = '444444';
  print(map1);

  map1.values.forEach((element) {});
  map1.forEach((key, value) {
    print('key==$key,value==$value');
  });
}

/// Runes ：特殊字符表示类(Unicode32)
void testRunes() {
  var clapping = '\u{1f44f}'; ///5个16进制 需要使用{}
  print(clapping);//👏
  //获得 16位代码单元
  print(clapping.codeUnits); //[55357, 56399]
  //获得unicode代码
  print(clapping.runes.toList()); //[128079]

  //fromCharCode 根据字符码创建字符串
  print( String.fromCharCode(128079));
  print( String.fromCharCodes(clapping.runes));
  print( String.fromCharCodes([55357, 56399]));
  print( String.fromCharCode(0x1f44f));

  var input = Runes('\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}');
  print(String.fromCharCodes(input));
}

///Symbols 标识符
void testSymbol() {
  var a=#A;
  print(a.runtimeType);
  switch(a){
    case #A :{
      break;
    }
    case #B :{
      break;
    }
    default:{

    }
  }

}

