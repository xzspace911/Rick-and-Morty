// ignore_for_file: avoid_print

import 'package:breaking_bad/utils/strings.dart';
import 'package:dio/dio.dart';

class CharactersWebServices {
  late Dio dio;
  CharactersWebServices() {
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    );
    dio = Dio(options);
  }

  Future<List<dynamic>> getAllCharacters() async {
    try {
      Response response = await dio.get('character');
      print(response.data.toString());
      return response.data['results'] as List<dynamic>;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
  Future<dynamic> getCharacter(dynamic id) async {
    try {
      Response response = await dio.get('character/$id');
      print(response.data.toString());
      return response.data;
    } catch (e) {
      print(e.toString());
      throw e;
    }
  }
}
