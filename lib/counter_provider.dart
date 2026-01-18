import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int counter = 0;
  void changeCounterState(){
    counter+=2;
    notifyListeners();
  }
}