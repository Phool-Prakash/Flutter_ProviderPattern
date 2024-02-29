import 'package:flutter/cupertino.dart';

///Define the data model that represents the state of your application. This can be a simple class representing your data
///



class CounterModel with ChangeNotifier{
  int _count = 0;
  int get count => _count;
  void increment() {
    _count++;
    notifyListeners();
  }
}
