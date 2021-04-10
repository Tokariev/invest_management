class Coin {
  String id;
  String symbol;
  String name;
  String image;

  Coin({this.id, this.symbol, this.name, this.image});

  factory Coin.fromJson(Map<String, dynamic> json) {
    return Coin(
      id: json['id'],
      symbol: json['symbol'],
      name: json['name'],
      image: json['image'],
    );
  }
}
