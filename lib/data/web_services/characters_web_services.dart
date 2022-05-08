

import 'package:breakingbad_app/constants/strings.dart';
import 'package:dio/dio.dart';

class characters_webService{
 late Dio dio;

    characters_webService(){
      BaseOptions baseOptions =BaseOptions(
        baseUrl: baseURL,
        receiveDataWhenStatusError: true,
        connectTimeout: 20*1000,
        receiveTimeout: 20*1000
      );
      dio =Dio(baseOptions);
    }

    Future<List<dynamic>> getAllCharacters() async{
      try {
        Response response = await dio.get('characters');
        print(response.toString());
        return response.data;
      } on Exception catch (e) {
        print(e.toString());
        return [];
      }
    }
}