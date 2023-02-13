import 'dart:convert';
import 'package:task_e_commerce/models/product_mobel.dart';
import 'package:task_e_commerce/services/strings.dart';
import 'package:http/http.dart' as http;
class SearchRepository {
  Future<List<Result>>searchProduct ({String? quarry})async{
    String search = quarry!.isNotEmpty ? quarry : "";
    try{
    String url = "${Strings.baseUrl}product/search-suggestions/?limit=10&offset=10&search=$search";
    final uri = Uri.parse(url);
    final responce = await http.get(uri);
    if(responce.statusCode == 200){
      List<Result> data = [];
      var datas = jsonDecode(const Utf8Decoder().convert(responce.bodyBytes));
      if(datas["data"]["products"]["results"] != null){
        for(var i in datas["data"]["products"]["results"]){
          data.add(Result.fromJson(i));
        }
        return data ;
      }else{
        throw "Not fount";
      }
      
    }else{
      throw Exception();
    }
    }catch(e){
      throw "$e";
    }
  }
}

//jsonDecode(Utf8Decoder().convert(res.bodyBytes))
//https://github.com/santoshakil/flutter_thread_seasion.git