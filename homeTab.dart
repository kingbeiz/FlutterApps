import 'dart:ffi';

import 'package:flutter/material.dart';
import 'detail.dart';

class HomeTab extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return new ListView(
      physics: new BouncingScrollPhysics(),
      padding: new EdgeInsets.only(left: 15, top: 20),
      children: [
        new SizedBox(height: 40),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Text('Welcome, Nadia',
                style: new TextStyle(
                    fontFamily: 'varela',
                    fontSize: 30,
                    fontWeight: FontWeight.bold)),
            new Container(
              padding: new EdgeInsets.only(right: 15),
              child: new Container(
                height: 40,
                width: 40,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      new BoxShadow(
                          blurRadius: 4.0,
                          color: Colors.grey,
                          spreadRadius: 4.0,
                          offset: new Offset(2, 2))
                    ],
                    image: new DecorationImage(
                      image: AssetImage('assets/model.jpg'),
                      fit: BoxFit.fill,
                    )),
              ),
            ),
          ],
        ),
        new SizedBox(height: 10),
        new Container(
          padding: new EdgeInsets.only(right: 50),
          child: new Text(
            'Let\'s select the best taste for your next coffee break!',
            style: new TextStyle(
                fontFamily: 'nunito',
                fontSize: 21,
                fontWeight: FontWeight.w300,
                color: Colors.grey),
          ),
        ),
        new SizedBox(height: 20),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Text('Taste of the week',
                style: new TextStyle(
                  fontFamily: 'varela',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                )),
            new Container(
              padding: new EdgeInsets.only(right: 15),
              child: new FlatButton(
                  onPressed: () {},
                  child: new Text(
                    'See All',
                    style: new TextStyle(
                        fontFamily: 'nunito',
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
        new Container(
          height: 360,
          child: new ListView(
            physics: new BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              _buildList(
                  'CoffeeShop',
                  'StarBucks',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  'assets/starbucks.png',
                  '12.99',
                  false),
              _buildList(
                  'CoffeeShop',
                  'Caffe Misto',
                  'Rich, full-bodied espresso with bittersweet milk sauce and steamed milk',
                  'assets/starbucks.png',
                  '4.99',
                  false),
              _buildList(
                  'PinkShop',
                  'PinkCafe',
                  'Our dark, rich espresso balanced with steamed milk and a light layer of foam',
                  'assets/starbucks.png',
                  '3.99',
                  false),
            ],
          ),
        ),
        new SizedBox(height: 10),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            new Text(
              'Explore nearby',
              style: new TextStyle(
                  fontFamily: 'varela',
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            new Container(
              padding: new EdgeInsets.only(right: 15),
              child: new FlatButton(
                  onPressed: () {},
                  child: new Text(
                    'See All',
                    style: new TextStyle(
                        fontFamily: 'nunito',
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
        new SizedBox(height: 10),
        new Container(
          height: 170,
          child: new ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _imageList('assets/coffee.jpg'),
              _imageList('assets/coffee2.jpg'),
              _imageList('assets/coffee3.jpg'),
            ],
          ),
        )
      ],
    );
  }

  Widget _buildList(String shopname, String foodname, String description,
      String imgpath, String price, bool isFavourite) {
    return new Container(
      padding: new EdgeInsets.only(right: 15),
      child: new Container(
        width: 215,
        child: new Column(
          children: [
            new Stack(
              children: [
                new Container(
                  height: 280,
                ),
                new Positioned(
                    top: 60,
                    child: new Container(
                      padding: new EdgeInsets.only(left: 15, right: 20),
                      height: 220,
                      width: 215,
                      decoration: new BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Color(0xFFDAB68C)),
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          new SizedBox(height: 50),
                          new Text(shopname + '\'s',
                              style: new TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          new Text(foodname,
                              style: new TextStyle(
                                  fontFamily: 'varela',
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          new SizedBox(height: 5),
                          new Text(description,
                              style: new TextStyle(
                                  fontFamily: 'nunito',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          new SizedBox(height: 10),
                          new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              new Text('\$' + price,
                                  style: new TextStyle(
                                      fontFamily: 'varela',
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF3A4742))),
                              new Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.white),
                                child: new Center(
                                    child: new Icon(
                                  Icons.favorite,
                                  color: isFavourite ? Colors.red : Colors.grey,
                                  size: 15,
                                )),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                new Positioned(
                    top: 10,
                    left: 60,
                    child: new Hero(
                        tag: foodname,
                        child: new Container(
                          height: 100,
                          width: 100,
                          decoration: new BoxDecoration(
                              image: new DecorationImage(
                                  image: AssetImage(imgpath),
                                  fit: BoxFit.contain)),
                        ))),
              ],
            ),
            new SizedBox(height: 10),
            new InkWell(
              onTap: () {
                Navigator.push<Void>(context,
                    MaterialPageRoute(builder: (context) => DetailPage()));
              },
              child: new Container(
                height: 50,
                width: 225,
                decoration: new BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Color(0xFF473D3A)),
                child: new Center(
                    child: new Text('Order Now',
                        style: TextStyle(
                            fontFamily: 'nunito',
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white))),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _imageList(String bgimgpath) {
    return new Container(
      padding: new EdgeInsets.only(right: 15),
      child: new Container(
        height: 100,
        width: 185,
        decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image:
              DecorationImage(image: AssetImage(bgimgpath), fit: BoxFit.cover),
        ),
      ),
    );
  }
}
