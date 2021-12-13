import 'oop.dart';



void main(List<String> arguments) {
  var cache=Cache<String>();
  cache.setItem("key1", "sadsadsad");
  print(cache.getItem("key1"));
}

class Cache<T> {
  static final Map<String, Object> _cached = Map();

  void setItem(String key, T value) {
    _cached[key] = value!;
  }

  T getItem(String key) {
    return _cached[key] as T;
  }
}

class Member <T extends Person>{
  T _person;
  Member(this._person);
}
