import 'dart:async';

import 'package:bidv/validators/login_validations.dart';

class LoginBloc{
  StreamController _userControler=new StreamController();
  StreamController _passControler=new StreamController();

  bool isValidInfo(String username,String pass)
  {
    if(!LoginValidations.isValidUser(username))
      {
        _userControler.sink.addError("Tài khoản không hợp lệ");
        return false;
      }
    if(!LoginValidations.isValidPass(pass))
    {
      _passControler.sink.addError("Tài khoản không hợp lệ");
      return false;
    }
    return true;

  }
}