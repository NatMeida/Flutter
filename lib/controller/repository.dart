import 'package:flutter/foundation.dart';

abstract class Repository<T> {
  List<T> _list = [];

  Repository() {
    _list = [];
  }

  List<T> get list => _list;

  void add(T item) {
    _list.add(item);
  }

  void remove(T item) {
    _list.remove(item);
  }

  void printAll() {
    for (var item in _list) {
      if (kDebugMode) {
        print(item.toString());
      }
    }
  }

  void printLast() {
    if (kDebugMode) {
      print(_list.last.toString());
    }
  }
}

