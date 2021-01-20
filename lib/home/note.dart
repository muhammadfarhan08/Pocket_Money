import 'package:flutter/material.dart';

class NotePage extends StatefulWidget {
  @override
  _NotePageState createState() => _NotePageState();
}

class _NotePageState extends State<NotePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://fsb.zobj.net/crop.php?r=pdas4sRfiJ9chJ9G_c5vqu1jCnnKBLQILZWRU9E05vN8ccRjKij3mGYXLBxHmNkMqtCHwZF8B5z2oWunBdIWpOY2E3cQO1K_pu1W40DqCUyTguyUZZPkxz_gYHujwdkIEUMgRZ1c3dy-lDuO"),
                fit: BoxFit.cover)),
        child: Center(
          child: Text(
            "NotePage",
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
