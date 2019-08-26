import 'package:flight_tickets/ThemeData.dart';
import 'package:flutter/material.dart';

import 'FlightDetailsChip.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Stack(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border: Border.all(color: Colors.grey),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Text(
                        '\$2345',
                        style: dropdownItemsStyle,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        '(\$99999)',
                        style: TextStyle(
                          fontSize: 16,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Wrap(
                    spacing: 8,
                    runSpacing: -4,
                    children: <Widget>[
                      FlightDetailsChip(
                        icon: Icons.flight,
                        chiplabel: 'Emirates asljdlkashdlsfal',
                      ),
                      FlightDetailsChip(
                        icon: Icons.calendar_today,
                        chiplabel: 'Jan 2020',
                      ),
                      FlightDetailsChip(
                        icon: Icons.star,
                        chiplabel: '4.5',
                      ),
                    ],
                  ),
                ],
              ), 
            ),
          ),
          Container(
            child: Positioned(
              right: 10,
              top: 10,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '55%',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange.withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
