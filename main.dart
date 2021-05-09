import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'Flutter-UI--Coffee/screens/homeTab.dart';
import 'Flutter-UI--Coffee/screens/prfileTab.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: FlutterApp(),
    );
  }
}

class FlutterApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<FlutterApp> {
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    final _bottomNavBarItem = <BottomNavigationBarItem>[
      new BottomNavigationBarItem(icon: new Icon(Feather.home), label: 'Home'),
      new BottomNavigationBarItem(
          icon: new Icon(Feather.feather), label: 'Order'),
      new BottomNavigationBarItem(
          icon: new Icon(Icons.favorite_border), label: 'Favorites'),
      new BottomNavigationBarItem(
          icon: new Icon(Feather.user), label: 'Profile'),
    ];

    final _pages = <Widget>[
      HomeTab(),
      new ListView(
        padding: new EdgeInsets.only(top: 50),
        children: [
          new Container(
              padding: new EdgeInsets.only(left: 15),
              child: new Text(
                'Your order',
                style: new TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ))
        ],
      ),
      new ListView(
        padding: new EdgeInsets.only(top: 50),
        children: [
          new Container(
              padding: new EdgeInsets.only(left: 15),
              child: new Text(
                'Favorites',
                style: new TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              )),
        ],
      ),
      PrfileTab(),
    ];

    final bottomNav = new BottomNavigationBar(
        items: _bottomNavBarItem,
        currentIndex: _index,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF473D3A),
        selectedFontSize: 12,
        unselectedFontSize: 11,
        selectedLabelStyle:
            new TextStyle(fontFamily: 'varela', fontWeight: FontWeight.bold),
        unselectedLabelStyle: new TextStyle(fontFamily: 'varela'),
        iconSize: 30,
        elevation: 10,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _index = value;
          });
        });
    return new Scaffold(
      body: _pages[_index],
      bottomNavigationBar: bottomNav,
    );
  }
}
