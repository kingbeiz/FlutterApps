import 'package:flutter/material.dart';

class PrfileTab extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<PrfileTab> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      padding: new EdgeInsets.only(top: 100, left: 15),
      children: <Widget>[
        new Center(
            child: new Column(
          children: [
            new Container(
                height: 100,
                width: 100,
                decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      new BoxShadow(
                          blurRadius: 6.0,
                          spreadRadius: 6.0,
                          color: Colors.grey,
                          offset: new Offset(3, 2))
                    ],
                    image: new DecorationImage(
                        image: AssetImage('assets/model.jpg'),
                        fit: BoxFit.fill))),
            new SizedBox(height: 20),
            new Text('Hi Norlan',
                style: new TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold))
          ],
        ))
      ],
    );
  }
}
