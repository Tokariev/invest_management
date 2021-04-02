import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../view/coin_list_view.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPage createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
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
                        //////////////
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
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 20.0),
                    width: 320,
                    child: CoinListView(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
