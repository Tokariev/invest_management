import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/app_bar.dart';

class AddPage extends StatelessWidget {
  static const textColorGrey = Color(0xFF929292);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          buildAppBar(context),
          Container(
            child: Container(
              width: 320,
              padding: EdgeInsets.all(10.0),
              child: TextField(
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
          )
        ],
      ),
    );
  }
}
