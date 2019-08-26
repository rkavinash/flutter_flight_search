import 'package:flight_tickets/CityCards.dart';
import 'package:flight_tickets/ThemeData.dart';
import 'package:flutter/material.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<CityCard> cityCardList = [
      CityCard('asset/images/pic.png', 'Bangalore', 'Feb 2019', '45', '4234',
          '2312'),
      CityCard('asset/images/blr.jpg', 'Bangalore', 'Feb 2019', '45', '4234',
          '2312'),
      CityCard('asset/images/belur.jpeg', 'Belur', 'Feb 2019', '45', '4234',
          '2312'),
      CityCard('asset/images/chikkatirupati.jpeg', 'chikkatirupati', 'Feb 2019', '45', '4234',
          '2312'),
      CityCard('asset/images/hampi.jpeg', 'hampi', 'Feb 2019', '45', '4234',
          '2312'),
      CityCard('asset/images/mysore.jpeg', 'mysore', 'Feb 2019', '45', '4234',
          '2312'),
      CityCard('asset/images/vidhana.jpeg', 'vidhana Soudha', 'Feb 2019', '45', '4234',
          '2312'),
    ];

    return Column(
      children: <Widget>[
        topFilterRow,
        Container(
          height: 240,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: cityCardList,
          ),
        )
      ],
    );
  }
}

var topFilterRow = Padding(
  padding: const EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 18,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      Text(
        'Currently watched items',
        style: dropdownItemsStyle,
      ),
      Text(
        'View All(12)',
        style: viewAllStyle,
      )
    ],
  ),
);
