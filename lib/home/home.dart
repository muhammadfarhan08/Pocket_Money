import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://fsb.zobj.net/crop.php?r=Jan4E86f9qXhPsy_RnWttwp7zqjTopMQPoMUkcWKGc7cbL_O2oc12-aGu-XGvw6PzBsyX3KrUWSKnju9jh2Fa6smXaYGw1tgx6PVZ94xIqx7_Nbut7M5wB6HOdkBFRvge5zGihMUIHfzMPIG"),
                fit: BoxFit.cover)),
        child: Center(
          child: Text(
            "Homepage",
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
