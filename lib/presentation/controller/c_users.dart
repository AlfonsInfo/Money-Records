import 'package:get/get.dart';
import 'package:money_records/data/model/users.dart';

class CUser extends GetxController{
  final _data = Users().obs;
  Users get data => _data.value; //* _data -> Rx Reactive 
  setData(Users n) => _data.value = n; //*Setter
}