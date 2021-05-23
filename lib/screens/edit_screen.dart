import 'package:flutter/material.dart';

import '../components/app_bar.dart';

class EditPage extends StatelessWidget {
  static const textColorGrey = Color(0xFF929292);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          buildAppBar(context),
        ],
      ),
    );
  }
}
