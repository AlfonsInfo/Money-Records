import 'package:intl/intl.dart';

class AppFormat{
  static String date(String stringDate) //2022-02-25
  {
    DateTime dateTime = DateTime.parse(stringDate);
    return DateFormat('dd MMM yyyy', 'id_ID').format(dateTime); //  25 Feb 2022
  }
}