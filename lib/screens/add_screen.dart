import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../http/coingecko_api.dart';
import '../http/coingecko_api.dart';
import 'dart:convert';

import '../components/app_bar.dart';

class AddPage extends StatelessWidget {
  static const textColorGrey = Color(0xFF929292);

  //Coingecko geckoApi = Coingecko();

  List<ListTile> coinList = List<ListTile>();

  Widget getList(BuildContext context) {
    final titles = [
      'bike',
      'boat',
      'bus',
      'car',
      'railway',
      'run',
      'subway',
      'transit',
      'walk'
    ];

    final icons = [
      Icons.directions_bike,
      Icons.directions_boat,
      Icons.directions_bus,
      Icons.directions_car,
      Icons.directions_railway,
      Icons.directions_run,
      Icons.directions_subway,
      Icons.directions_transit,
      Icons.directions_walk
    ];

    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(
          //                           <-- Card widget
          child: ListTile(
            leading: Icon(icons[index]),
            title: Text(titles[index]),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var list = getList(context);

    return Scaffold(
      body: Row(
        children: [
          buildAppBar(context),
          Container(
            child: Container(
              width: 320,
              padding: EdgeInsets.all(10.0),
              child: TextField(
                onTap: () {},
                onChanged: (text) {
                  print("First text field: $text");
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
                    borderSide: BorderSide(color: Color(0xFFF5F5F7), width: 2),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0)),
                    borderSide: BorderSide(color: Color(0xFFF5F5F7), width: 2),
                  ),
                ),
              ),
            ),
          ),
          Container(
            //height: 400,
            width: 320,
            color: Colors.amber,
            child: list,
          ),
        ],
      ),
    );
  }
}
