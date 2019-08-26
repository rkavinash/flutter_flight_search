import 'package:flutter/material.dart';

import 'ThemeData.dart';

class ChoiceChips extends StatefulWidget {
  final IconData icons;
  final String text;
  final isSelected;

  // ChoiceChips({Key key}) : super(key: key);
  ChoiceChips(this.icons, this.text, this.isSelected);

  _ChoiceChipsState createState() => _ChoiceChipsState();
}

class _ChoiceChipsState extends State<ChoiceChips> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: widget.isSelected ? BoxDecoration(
        color: Colors.white.withOpacity(0.25),
        borderRadius: BorderRadius.circular(20),
      ) : null,
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          Icon(
            widget.icons,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            widget.text,
            style: dropdownStyle,
          ),
        ],
      ),
    );
  }
}
