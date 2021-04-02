import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import '../model/coin_model.dart';

class CoingeckoAPI {
  Future<List<Coin>> fetchCoins() async {
    Uri coinsListAPIUrl =
        Uri.parse('https://api.coingecko.com/api/v3/coins/list');
    final response = await http.get(coinsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new Coin.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}
