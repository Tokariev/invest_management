import 'package:flutter/material.dart';
import '../http/coingecko_api.dart';
import '../model/coin_model.dart';

class CoinListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CoingeckoAPI api = new CoingeckoAPI();
    return FutureBuilder<List<Coin>>(
      future: api.fetchCoins(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Coin> data = snapshot.data;

          return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  ListView _jobsListView(data) {
    print(data.length);
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return _tile(
              data[index].id, data[index].name, Icons.attach_money_rounded);
        });
  }

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        tileColor: Color(0xFFF5F5F7),
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
      );
}
