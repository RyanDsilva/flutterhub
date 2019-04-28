import 'package:flutter/material.dart';

class DarkCard extends StatelessWidget {
  final Widget child;

  const DarkCard({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: new EdgeInsets.all(10.0),
      decoration: new BoxDecoration(
        color: new Color(0x3F000000),
        shape: BoxShape.rectangle,
        borderRadius: new BorderRadius.circular(10.0),
        boxShadow: <BoxShadow>[
          new BoxShadow(
            color: Colors.black12,
            blurRadius: 8.0,
            offset: new Offset(0.0, 8.0),
          ),
        ],
      ),
      child: this.child,
    );
  }
}
