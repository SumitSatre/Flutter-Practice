

import 'package:flutter/cupertino.dart';

class ListProvider extends ChangeNotifier{
  final List<int> list = [1,2,3,4,5];

  void add(){
      list.add(list.last + 1);
      notifyListeners(); // Notifies the listeners about the change in the list
  }
}