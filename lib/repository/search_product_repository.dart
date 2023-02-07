import 'dart:convert';

import 'package:http/http.dart' as http;
class SearchRepository {
  Future<dynamic> searchProduct ()async{
    const String url = "https://jsonplaceholder.typicode.com/albums";
    final uri = Uri.parse(url);
    final responce = await http.get(uri);
    if(responce.statusCode == 200){
      return jsonDecode(responce.body);
    }else {
      print("Problem");
      throw "Something worng";
    }
  }
}