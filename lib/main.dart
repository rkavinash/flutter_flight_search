import 'package:flight_tickets/HomeScreen.dart';
import 'package:flutter/material.dart';

void main() =>  runApp(FlightTicket());

class FlightTicket extends StatelessWidget {
  const FlightTicket({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}