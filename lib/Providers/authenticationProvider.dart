

import 'package:flutter/foundation.dart';

class authenticationProvider extends ChangeNotifier
{
  String _name="", _pass="";
  int _id=0;

  void setData(String name, String pass, int id)
  {
    _name = name;
    _pass = pass;
    _id = id;
    notifyListeners();
  }

  String get name => _name;
  String get pass => _pass;
  int get id => _id;

}