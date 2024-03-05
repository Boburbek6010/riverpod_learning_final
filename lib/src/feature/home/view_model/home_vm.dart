import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var homeRef = ChangeNotifierProvider.autoDispose<HomeNotifier>((ref) => HomeNotifier());

class HomeNotifier extends ChangeNotifier{
  int counter = 0;
  void increment(){
    counter++;
    notifyListeners();
  }
  void decrement(){
    counter--;
    notifyListeners();
  }
}