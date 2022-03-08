import 'dart:convert';

import 'package:corona19_info/data/data_source/result.dart';
import 'package:http/http.dart' as http;

class CoronaApi {
  final http.Client client;

  CoronaApi(this.client);

  static const key = 'KRZrH8BtuOsfEwNh4GqFc9Xbmlj7ngV16';

  Future<Result<Map<String, dynamic>>> infoFetch() async {
    try {
      final response = await client.get(
        Uri.parse(
          'https://api.corona-19.kr/korea/beta/?serviceKey=KRZrH8BtuOsfEwNh4GqFc9Xbmlj7ngV16',
        ),
      );
      print("111111111111111111111");
      print("$response");
      Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      print("222222222222222222222");
      print("$jsonResponse");

      return Result.success(jsonResponse);
    } catch (e) {
      return const Result.error('네트워크 에러');
    }
  }
}
