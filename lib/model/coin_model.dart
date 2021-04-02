class Coin {
  String id;
  String symbol;
  String name;

  Coin({this.id, this.symbol, this.name});

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
    );
  }
}
