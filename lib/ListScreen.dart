import 'package:flight_tickets/FlightListBottomPart.dart';
import 'package:flight_tickets/FlightListTopPart.dart';
import 'package:flutter/material.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: listViewAppBar(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[FlightListTopPart(), FlightListBottomPart()],
        ),
      ),
    );
  }

  AppBar listViewAppBar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      centerTitle: true,
      title: Text('Search List'),
      backgroundColor: Colors.orange,
      leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back)),
    );
  }
}
