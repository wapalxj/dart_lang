void main(List<String> arguments) {
  print("asdsadsadsad");
}



class FunctionLearn{

  int sum(int v1,int v2){
    return v1+v2;
  }

  //私有方法
  _learn(){
    print("私有方法");
  }

  //匿名方法
  anonyousFunction(){
    var list=['私有方法','匿名方法'];
    list.forEach((element) {
       print(element);
    });
  }

}