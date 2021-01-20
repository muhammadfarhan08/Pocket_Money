import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  @override
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://fsb.zobj.net/crop.php?r=my5pnN2e1LGlBGKtvyRkPFZdg0T6o3SPkf55VAkpxKO2vwbPSce7LlGZLETm9gC8Mf9cNlG22R7Jww3XNl0ITFojctKABr-hUs9_1jbcpPXffMYYOSjl4rEowipsbpddUDWZ1fJzESWYS3b8"),
                fit: BoxFit.cover)),
        child: Center(
          child: Text(
            "AccountPage",
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
