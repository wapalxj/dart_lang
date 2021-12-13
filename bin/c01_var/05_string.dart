void main(List<String> arguments) {
  String str="vero";
  String txt="$str 11111";
  String txt2="${str} 2222";

  String txt3="""==="sadsad"===""";
  String txt4="sad''sad";
  String txt5='sad""sad';

  print(txt);
  print(txt3);
  print(txt4);
  print(txt5);

  print('====================================================');

  String n="\\n";
  //r前缀：不解析特殊字符，按raw显示
  String n2=r"\n";
  print(n);
  print(n2);

}