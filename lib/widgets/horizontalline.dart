import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HorizontalOrLine extends StatelessWidget {
  const HorizontalOrLine({
    this.label,
    this.height,
  });

  final String label;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 10.0, right: 30.0),
            child: Divider(
              color: Colors.white.withOpacity(0.7),
              height: height,
            )),
      ),
      Text(
        label,
        style: TextStyle(
          color: Colors.white.withOpacity(0.7),
        ),
      ),
      Expanded(
        child: new Container(
            margin: const EdgeInsets.only(left: 15.0, right: 30.0),
            child: Divider(
              color: Colors.white.withOpacity(0.7),
              height: height,
            )),
      ),
    ]);
  }
}
