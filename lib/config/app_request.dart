import 'dart:convert';

import 'package:d_method/d_method.dart';
import 'package:http/http.dart' as http;
class AppRequest{

  //Fungsi Get
  static Future<Map?> gets(String url,{Map<String, String>? headers}) async{
    try{
      // var response = await http.get(Uri.parse(url),headers: headers);
      http.Response response = await http.get(Uri.parse(url),headers: headers);
      // if(Response base status code sabi)
      DMethod.printTitle('try = $url', response.body);

      Map responseBody = jsonDecode(response.body);
      return responseBody; 
    } catch(e){
      DMethod.printTitle('catch', e.toString());
      return null;
    }
  }

  //Fungsi Post
  static Future<Map?> post(String url,Object? body,{Map<String, String>? headers}) async{
    try{
      // var response = await http.get(Uri.parse(url),headers: headers);
      http.Response response = await http.post(
        Uri.parse(url),
        body: body,
        headers: headers);
      // if(Response base status code sabi)
      DMethod.printTitle('try = $url', response.body);
      Map responseBody = jsonDecode(response.body);
      return responseBody; 
    } catch(e){
      DMethod.printTitle('catch', e.toString());
      return null;
    }
  }

}