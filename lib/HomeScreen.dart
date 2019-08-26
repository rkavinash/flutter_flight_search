import 'package:flutter/material.dart';

import 'BottomContainer.dart';
import 'TopContainer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TopContainer(),
            BottomContainer(),
            BottomContainer(),
          ],
        ),
      ),
    );
  }
}
