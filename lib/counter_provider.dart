import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  //  pvt is lye bnaya k koi access na kr sky
  int _counter=0;

  //ab ye function is lye bnaya ta k counter ki value hasil ki ja sky
  int getCounter()=> _counter;

  counterIncrement(){
    _counter++;
    notifyListeners();
  }
  counterDecrement(){
    if(_counter>0){
      _counter--;
    }
    notifyListeners();
  }
}