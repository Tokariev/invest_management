import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/app_bar.dart';
import '../components/custom_expansion_panel.dart';
import '../components/test.dart';

class MainPage extends StatelessWidget {
  static const textColorGrey = Color(0xFF929292);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      home: Scaffold(
        body: Row(
          children: [
            buildAppBar(),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Total invested',
                                  style: buildTotalStyle(),
                                ),
                                Text(
                                  '20 000€',
                                  style: buildBoldStyle(),
                                ),
                              ],
                            ),
                            height: 160.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Container(
                            height: 160.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFF5F5F7),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Investment portfolio',
                        style: GoogleFonts.openSans(
                          textStyle: TextStyle(
                            color: Colors.black,
                            //letterSpacing: .5,
                            fontSize: 24.0,
                            //fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  //Expanded list BTC
                  MyExpansionPanel(),
                ],
              ),
            ), //Middle column
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        iconSize: 30.0,
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: 28.0,
                      ),
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          image: DecorationImage(
                            image:
                                AssetImage('../assets/images/anton_avatar.jpg'),
                            fit: BoxFit.fill,
                          ),
                          //shape: BoxShape.circle,
                        ),
                      ),
                      IconButton(
                          icon: Icon(Icons.keyboard_arrow_down),
                          onPressed: () {})
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  TextStyle buildTotalStyle() {
    return GoogleFonts.openSans(
      textStyle: TextStyle(
        color: textColorGrey,
        //letterSpacing: .5,
        fontSize: 20.0,
      ),
    );
  }

  TextStyle buildBoldStyle() {
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        color: Colors.black,
        //letterSpacing: .5,
        fontSize: 48.0,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
