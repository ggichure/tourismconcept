import 'package:bon_tourismo/dest_caro.dart';
import 'package:bon_tourismo/header.dart';
import 'package:bon_tourismo/popular.dart';
import 'package:bon_tourismo/tabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
              child: Container(
          padding: EdgeInsets.symmetric(vertical: 80),
          child: Column(
            children: <Widget>[
              Container(margin: EdgeInsets.only(bottom: 30), child: Header()),
              DestinationCarousel(),
              Tabs(),
             
            ],
          ),
        ),
      ),
    );
  }
}