import 'package:flight_tickets/FlightCard.dart';
import 'package:flight_tickets/ThemeData.dart';
import 'package:flutter/material.dart';

class FlightListBottomPart extends StatelessWidget {
  const FlightListBottomPart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 14,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 16,
            ),
            child: Text(
              'Best deals for next 6 months !!',
              style: dropdownItemsStyle,
            ),
          ),
          ListView(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: ClampingScrollPhysics(),
            children: <Widget>[
              FlightCard(),
              FlightCard(),
              FlightCard(),
              FlightCard(),
            ],
          ),
        ],
      ),
    );
  }
}
