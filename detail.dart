import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class DetailPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<DetailPage> {
  int value = 1;
  @override
  void _buttomSheet() {
    showModalBottomSheet<void>(
        context: context,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        builder: (BuildContext context) {
          return new Container(
            height: 500,
            child: new ListView(
              padding: new EdgeInsets.only(left: 15, top: 20, right: 15),
              children: [
                new Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    new InkWell(
                        child: new Text(
                          'X',
                          style: new TextStyle(
                              fontSize: 15,
                              fontFamily: 'varela',
                              color: Color(0xFF716966)),
                        ),
                        onTap: () => Navigator.pop(context)),
                  ],
                ),
                new SizedBox(height: 10),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Column(
                      children: [
                        new Text(
                          'Temperature',
                          style: new TextStyle(
                              fontSize: 15,
                              fontFamily: 'varela',
                              fontWeight: FontWeight.bold),
                        ),
                        new SizedBox(height: 5),
                        new Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.grey[400]),
                        )
                      ],
                    ),
                    new Column(
                      children: [
                        new Text(
                          'Quantity',
                          style: new TextStyle(
                            fontSize: 15,
                            fontFamily: 'varela',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        new SizedBox(height: 5),
                        new Container(
                            height: 30,
                            child: new Row(
                              children: [
                                new InkWell(
                                    onTap: () {
                                      setState(() {
                                        value--;
                                      });
                                    },
                                    child: new Container(
                                        height: 20,
                                        width: 20,
                                        decoration: new BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.yellow[600],
                                        ),
                                        child: new Center(
                                          child: new Text('-',
                                              style: new TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold)),
                                        ))),
                                new SizedBox(width: 5),
                                new Text(value.toString(),
                                    style: new TextStyle(
                                        fontFamily: 'varela',
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF716966))),
                                new SizedBox(width: 5),
                                new InkWell(
                                    onTap: () {
                                      setState(() {
                                        value++;
                                      });
                                    },
                                    child: new Container(
                                        height: 20,
                                        width: 20,
                                        decoration: new BoxDecoration(
                                            color: Colors.yellow[600],
                                            shape: BoxShape.circle),
                                        child: new Center(
                                            child: new Text('+',
                                                style: new TextStyle(
                                                    fontSize: 15)))))
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ],
            ),
          );
        });
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        physics: new BouncingScrollPhysics(),
        children: <Widget>[
          new Stack(
            children: <Widget>[
              new Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: Color(0xFFF3B2B7)),
              new Positioned(
                  top: MediaQuery.of(context).size.height / 2.7,
                  child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40.0),
                              topLeft: Radius.circular(40.0)),
                          color: Colors.white))),
              new Positioned(
                  top: 270,
                  left: 15,
                  child: new Container(
                    height: 500,
                    width: MediaQuery.of(context).size.width,
                    child: new ListView(
                      padding: new EdgeInsets.only(left: 15, right: 35),
                      children: <Widget>[
                        new Text(
                          'Preparation time',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        new Text(
                          '5m',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey),
                        ),
                        new SizedBox(height: 5),
                        new Divider(thickness: 1),
                        new SizedBox(height: 5),
                        new Text(
                          'Ingredients',
                          style: TextStyle(
                              fontFamily: 'nunito',
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF726B68)),
                        ),
                        new SizedBox(height: 10),
                        new Container(
                          height: 100,
                          child: new ListView(
                            physics: new BouncingScrollPhysics(),
                            scrollDirection: Axis.horizontal,
                            children: [
                              _ingredientList(
                                  'Water',
                                  Icon(Feather.droplet, color: Colors.white),
                                  Color(0xFF6FC5DA)),
                              _ingredientList(
                                  'Brewed Espresso',
                                  Icon(Feather.target, color: Colors.white),
                                  Color(0xFF615955)),
                              _ingredientList(
                                  'Sugar',
                                  Icon(Feather.box,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFFF39595)),
                              _ingredientList(
                                  'Toffee Nut Syrup',
                                  Icon(MaterialCommunityIcons.peanut_outline,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF8FC28A)),
                              _ingredientList(
                                  'Natural Flavors',
                                  Icon(MaterialCommunityIcons.leaf_maple,
                                      size: 18.0, color: Colors.white),
                                  Color(0xFF3B8079)),
                              _ingredientList(
                                  'Vanilla Syrup',
                                  Icon(
                                      MaterialCommunityIcons
                                          .flower_tulip_outline,
                                      size: 18.0,
                                      color: Colors.white),
                                  Color(0xFFF8B870)),
                            ],
                          ),
                        ),
                        new SizedBox(height: 5),
                        new Divider(thickness: 1),
                        new SizedBox(height: 5),
                        new Text('Nutrition Information',
                            style: new TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF726B68))),
                        new SizedBox(height: 5),
                        new Row(children: [
                          Text(
                            'Calories',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 14.0,
                                color: Color(0xFFD4D3D2)),
                          ),
                          new SizedBox(width: 15.0),
                          new Text(
                            '250',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF716966)),
                          ),
                        ]),
                        new SizedBox(height: 5.0),
                        new Row(
                          children: <Widget>[
                            new Text(
                              'Proteins',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            new SizedBox(width: 15.0),
                            new Text(
                              '10g',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        new SizedBox(height: 5.0),
                        new Row(
                          children: <Widget>[
                            Text(
                              'Caffeine',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14.0,
                                  color: Color(0xFFD4D3D2)),
                            ),
                            SizedBox(width: 15.0),
                            Text(
                              '150mg',
                              style: TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 12.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF716966)),
                            ),
                          ],
                        ),
                        new Divider(thickness: 1),
                        new SizedBox(height: 10),
                        new InkWell(
                          onTap: _buttomSheet,
                          child: new Container(
                            padding: new EdgeInsets.only(right: 25),
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(35.0),
                                color: Color(0xFF473D3A)),
                            child: new Center(
                              child: Text(
                                'Make Order',
                                style: TextStyle(
                                    fontFamily: 'nunito',
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        new SizedBox(height: 10),
                      ],
                    ),
                  )),
              new Positioned(
                  top: 15,
                  left: 160,
                  child: new Container(
                      height: 350,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/pinkcup.png'),
                              fit: BoxFit.cover)))),
              //top content
              new Positioned(
                  top: 15,
                  left: 15,
                  child: new Container(
                    height: 300,
                    width: 300,
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        new Text(
                          'Caramel',
                          style: new TextStyle(
                              fontFamily: 'varela',
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        new Row(
                          children: [
                            new Text(
                              'Macchiato',
                              style: new TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            new SizedBox(width: 30),
                            new Container(
                              height: 40,
                              width: 40,
                              decoration: new BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                              ),
                              child: new Center(
                                  child: new Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }

  Widget _ingredientList(String name, Icon iconName, Color bgcolor) {
    return new Container(
      padding: new EdgeInsets.only(right: 10),
      child: new Column(
        children: [
          new Container(
              height: 50,
              width: 50,
              decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: bgcolor),
              child: new Center(
                child: iconName,
              )),
          new SizedBox(height: 5),
          new Container(
              width: 60,
              child: new Center(
                child: new Text(
                  name,
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      fontFamily: 'nunito',
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFC2C0C0)),
                ),
              )),
        ],
      ),
    );
  }
}
