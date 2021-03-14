import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

Uri url = Uri.parse('https://api.coingecko.com/api/v3/coins/list');

class Coingecko {
  Future<http.Response> getCoinList() async {
    http.Response response = await http.get(url);
    print(response.body);
    return response;
  }
}
