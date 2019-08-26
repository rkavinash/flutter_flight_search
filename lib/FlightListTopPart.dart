import 'package:flight_tickets/CustomClipShape.dart';
import 'package:flutter/material.dart';

class FlightListTopPart extends StatelessWidget {
  const FlightListTopPart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 160,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange, Colors.orange],
                ),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 20),
              Card(
                margin: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Boston',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.black),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Text(
                              'New York',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.import_export,
                          size: 32,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
