import 'dart:convert';

import 'package:money_records/data/model/users.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Session{

  //* Set Sesion User -> set session saat login
  static Future<bool> saveUser(Users user) async{
    final pref = await SharedPreferences.getInstance();
    
    Map<String, dynamic> mapUsers =user.toJson();
    String stringUser = jsonEncode(mapUsers);
    // return await pref.setString('user', stringUser);
    bool success = await pref.setString('user', stringUser);
    return success;
  }

  //* get Session --> untuk pengecekan session
  static Future<Users> getUser() async{
    Users user = Users();    
    final pref = await SharedPreferences.getInstance();
    String? stringUser = pref.getString('user');

    if(stringUser !=null){
      Map<String, dynamic> mapUser = jsonDecode(stringUser);
      user = Users.fromJson(mapUser);
    }
    return user;
  }

  static Future<bool> clearUser() async{
    final pref = await SharedPreferences.getInstance();
    bool success = await pref.remove('user');
    return success;
  }
}