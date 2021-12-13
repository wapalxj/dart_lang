void main(List<String> arguments) {

  Student.doPrint("asdsadsadsad");
}

class Student extends Person {
  String _school; //_开头为私有变量
  String city;
  String country;
  String name;

  //可选参数+默认参数
  Student(String name, int? age, this._school, {this.city = "city", this.country = "china"})
      : name = "$country.$city",
        //初始化列表:不能在this重定向构造函数
        super(name, age) {
    print("构造方法体不是必须的");
  }

  //命名构造方法
  //初始化列表:不能在this重定向构造函数
  Student.X(String name, int? age) : /*name = "这里报错",*/ this(name, age, "school");

  //命名工厂构造方法
  //不需要将类的final变量作为参数
  factory Student.stu(String name, int? age) {
    return Student.X(name, age);
  }

  factory Student.stu2(Student stu) {
    return Student(stu.name, stu.age, stu._school);
  }

  String get school => _school;

  set school(String value) {
    _school = value;
  }

  static doPrint(String str){
    print("doPrint ==$str");
  }

}

class Person {
  String name;
  int? age;

  Person(this.name, this.age);

  //命名构造方法
  Person.Name(this.name);

  //命名构造方法
  Person.XXX(this.name);

  @override
  String toString() {
    return "name:$name,age:$age";
  }
}

//工厂构造方法
class Logger {
  static Logger? _cache;

  factory Logger() {
    if (_cache == null) {
      _cache = Logger._internal();
    }
    return _cache!;
  }

  Logger._internal();
}


abstract class Study{
   void study();
   String studyFun(){
     return "studyFun()";
   }
}

class StudyFlutter extends Study{
  @override
  void study() {

  }
}


class TestMix extends Person with Study{
  TestMix(String name, int? age) : super(name, age);

  @override
  void study() {

  }

}


