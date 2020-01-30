import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), ()=> print("Splash Done!"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.redAccent,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 50.0,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.pinkAccent,
                          size: 45.0,
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 10.0),
                      // ),
                      Text(
                        "Naija Way Shop",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(
                        height: 100.0,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment :MainAxisAlignment.center,
                          children: <Widget>[
                            CircularProgressIndicator(),
                            Padding(
                              padding: EdgeInsets.only(top: 10.0),
                            ),
                            Text(
                              "Online Shop \nFor Everyone",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              )
                            )
                          ],
                        )
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
