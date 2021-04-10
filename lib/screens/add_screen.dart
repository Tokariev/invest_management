import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../model/coin_model.dart';
import '../http/coin_api.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPage createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
  List<Coin> _coins = [];
  List<Coin> _coinsDisplay = [];

  bool _isLoading = true;

  @override
  void initState() {
    fetchCoins().then((value) {
      setState(() {
        _isLoading = false;
        _coins.addAll(value);
        _coinsDisplay = _coins;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          buildAppBar(context),
          Expanded(
            child: Column(
              children: [
                Container(
                  child: Container(
                    width: 320,
                    padding: EdgeInsets.all(10.0),
                    child: TextField(
                      onTap: () {},
                      onChanged: (text) {
                        setState(() {
                          _coinsDisplay = _coins.where((coin) {
                            return coin.name
                                .toLowerCase()
                                .contains(text.toLowerCase());
                          }).toList();
                        });
                      },
                      autocorrect: true,
                      decoration: InputDecoration(
                        hintText: 'Enter Your Investment Here...',
                        prefixIcon: Icon(Icons.search),
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: Color(0xFFF5F5F7),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF5F5F7), width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(16.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFF5F5F7), width: 2),
                        ),
                      ),
                    ),
                  ),
                ), //Search input
                Expanded(
                  child: ListView.builder(
                      itemCount: _coinsDisplay.length,
                      itemBuilder: (context, index) {
                        if (!_isLoading) {
                          return _listIndex(index);
                        } else {
                          return Center(child: CircularProgressIndicator());
                        }
                      }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _listIndex(index) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Image.network(_coinsDisplay[index].image),
          backgroundColor: Colors.transparent,
        ),
        title: Text(_coinsDisplay[index].name,
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18)),
        subtitle: Text(_coinsDisplay[index].symbol.toUpperCase()),
        trailing: Icon(Icons.add),
        onTap: () {
          print(index);
        },
      ),
    );
  }
}
