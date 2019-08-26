import 'package:flight_tickets/CustomClipShape.dart';
import 'package:flight_tickets/ListScreen.dart';
import 'package:flight_tickets/ThemeData.dart';
import 'package:flutter/material.dart';

import 'ChoiceChips.dart';

class TopContainer extends StatefulWidget {
  const TopContainer({Key key}) : super(key: key);

  @override
  _TopContainerState createState() => _TopContainerState();
}

List<String> locations = ['Boston (BOS)', 'New York (JFK)'];
int selectedIndex = 0;

class _TopContainerState extends State<TopContainer> {
  var isFlightSelected = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomShapeClipper(),
          child: Container(
            height: 400,
            // color: Colors.orange,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.amber],
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: locationsRow(),
                ),
                heroText(),
                searchField(),
                flightHotelChoiceChips(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row flightHotelChoiceChips() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () {
            setState(() {
              isFlightSelected = true;
            });
          },
          child: ChoiceChips(Icons.flight_takeoff, 'Flights', isFlightSelected),
        ),
        SizedBox(
          width: 15,
        ),
        InkWell(
            onTap: () {
              setState(() {
                isFlightSelected = false;
              });
            },
            child: ChoiceChips(Icons.hotel, 'Hotels', !isFlightSelected)),
      ],
    );
  }

  Padding searchField() {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Material(
        elevation: 10,
        borderRadius: BorderRadius.all(
          Radius.circular(30),
        ),
        child: TextField(
          controller: TextEditingController(
            text: locations[1],
          ),
          style: inputTextStyle,
          cursorColor: Colors.red,
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 13,
              ),
              suffixIcon: Material(
                elevation: 5,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ListScreen()));
                  },
                  child: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                ),
              )),
        ),
      ),
    );
  }

  Padding heroText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Text(
        'Where would\n you want to go?',
        style: TextStyle(
          color: Colors.white,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Row locationsRow() {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: Colors.white,
        ),
        SizedBox(
          width: 15,
        ),
        PopupMenuButton(
          child: Row(
            children: <Widget>[
              Text(locations[selectedIndex], style: dropdownStyle),
              Icon(Icons.arrow_drop_down),
            ],
          ),
          onSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
            PopupMenuItem(
              child: Text(
                locations[0],
                style: dropdownItemsStyle,
              ),
              value: 0,
            ),
            PopupMenuItem(
              child: Text(
                locations[1],
                style: dropdownItemsStyle,
              ),
              value: 1,
            ),
          ],
        ),
        Spacer(),
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
      ],
    );
  }
}
