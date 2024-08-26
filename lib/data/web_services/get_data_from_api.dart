// import 'package:api_learn/data/models/card_model.dart';
import 'package:api_learn/def.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class GetDataFromAPI {
  late Dio dio;

  GetDataFromAPI() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: baseURL,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 10),
    );

    dio = Dio(baseOptions);
  }

  Future<List> fetchAllCards() async {
    Response res = await dio.get(allCard);
    
    debugPrint(res.data.toString());
    return res.data;
  }
}
