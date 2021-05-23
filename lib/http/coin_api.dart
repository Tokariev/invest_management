import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import '../model/coin_model.dart';

Future<List<Coin>> fetchCoins() async {
  Uri url = Uri.parse(
      'https://api.coingecko.com/api/v3/coins/markets?vs_currency=eur&order=market_cap_desc&per_page=50');

  final response = await http.get(url);

  if (response.statusCode == 200) {
    return compute(parseCoin, response.body);
  } else {
    throw Exception('Failed to load coins from API');
  }
}

List<Coin> parseCoin(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var coins = list.map((model) => Coin.fromJson(model)).toList();
  return coins;
}
