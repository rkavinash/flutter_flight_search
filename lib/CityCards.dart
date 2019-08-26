import 'dart:ui' as prefix0;

import 'package:flight_tickets/ThemeData.dart';
import 'package:flutter/material.dart';

class CityCard extends StatelessWidget {
  final String cityImage, cityName, monthYear, discount, oldPrice, newPrice;
  CityCard(this.cityImage, this.cityName, this.monthYear, this.discount,
      this.newPrice, this.oldPrice);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 210,
                  width: 160,
                  child: Image.asset(
                    cityImage,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  width: 160,
                  height: 50,
                  child: Container(
                    // color: Colors.black,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [Colors.black, Colors.black12],
                    )),
                  ),
                ),
                Positioned(
                  left: 15,
                  bottom: 5,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            cityName,
                            style: infoStyle,
                          ),
                          Text(
                            monthYear,
                            style: infoStyle,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Text(
                          '$discount%',
                          style: infoStyle,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              '\$$newPrice',
              style: newPriceTextStyle,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              '(\$$oldPrice)',
              style: oldPriceTextStyle,
            ),
          ],
        )
      ],
    );
  }
}
