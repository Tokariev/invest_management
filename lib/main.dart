import 'package:flutter/material.dart';

import 'screens/main_screen.dart';

import 'package:invest_manaement/screens/main_screen.dart';
import 'package:invest_manaement/screens/add_screen.dart';

void main() => runApp(MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Colors.black,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          '/add': (context) => AddPage(),
          '/remove': (context) => AddPage(),
          '/edit': (context) => AddPage(),
          '/settings': (context) => AddPage(),
          '/exit': (context) => AddPage(),
        }));
