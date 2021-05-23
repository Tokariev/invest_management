import 'package:flutter/material.dart';

class AddCoinPage extends StatefulWidget {
  @override
  _AddCoinPage createState() => _AddCoinPage();
}

class _AddCoinPage extends State<AddCoinPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final coinID = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      body: Center(
        child: Text(coinID.toString()),
      ),
    );
  }
}
