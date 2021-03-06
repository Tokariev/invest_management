import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Column buildAppBar(BuildContext context) {
  return Column(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: 132,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(1),
                  spreadRadius: 2,
                  blurRadius: 20,
                  offset: Offset(8, 8), // changes position of shadow
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildAppBarIcon(Icons.home, context, '/'),
                          buildAppBarText('Home'),
                        ],
                      ),
                      Column(
                        children: [
                          buildAppBarIcon(Icons.add, context, '/add'),
                          buildAppBarText('Add'),
                        ],
                      ),
                      Column(
                        children: [
                          buildAppBarIcon(Icons.remove, context, '/remove'),
                          buildAppBarText('Remove'),
                        ],
                      ),
                      Column(
                        children: [
                          buildAppBarIcon(Icons.edit, context, '/edit'),
                          buildAppBarText('Edit'),
                        ],
                      ),
                      Column(
                        children: [
                          buildAppBarIcon(Icons.settings, context, '/settings'),
                          buildAppBarText('Settings'),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buildAppBarIcon(Icons.exit_to_app, context, '/exit'),
                    SizedBox(height: 65.0)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}

Text buildAppBarText(String text) {
  return Text(
    text,
    style: GoogleFonts.openSans(
      color: Colors.white,
      fontSize: 13.0,
      fontWeight: FontWeight.w700,
    ),
  );
}

IconButton buildAppBarIcon(IconData icon, BuildContext context, String route) {
  return IconButton(
      //padding: EdgeInsets.only(top: 58.0, bottom: 10.0),
      icon: Icon(
        icon,
        color: Colors.white,
        size: 30.0,
      ),
      onPressed: () {
        // Navigate to the second screen using a named route.
        Navigator.pushNamed(context, route);
      });
}
