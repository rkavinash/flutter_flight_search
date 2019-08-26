import 'package:flutter/material.dart';

class FlightDetailsChip extends StatelessWidget {
  final IconData icon;
  final String chiplabel;

  const FlightDetailsChip({Key key, this.icon, this.chiplabel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: RawChip(
          avatar: Icon(icon, size: 18,),
          label: Text(chiplabel),
          padding: EdgeInsets.all(6),
          labelPadding: EdgeInsets.all(6),
        ),
      ),
    );
  }
}
