void main(List<String> arguments) {
  List? list;
  print(list?.length??0);

  list=[];
  list.add(0);
  if([null,'',0].contains(list[0])){
    print("list 为 empty");
  }
}

