import 'package:flutter/material.dart';
import 'package:i_rich/login and signup/signup.dart';
import 'login and signup/login.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => new _FirstPageState();
}

final text = Text(
  'Selamat Datang Di iRich',
  maxLines: 3,
  overflow: TextOverflow.ellipsis,
  style: TextStyle(
      color: Colors.white,
      decoration: TextDecoration.underline,
      decorationColor: Colors.white,
      decorationStyle: TextDecorationStyle.double,
      fontWeight: FontWeight.w900,
      fontStyle: FontStyle.italic,
      fontFamily: 'RobotoMono',
      fontSize: 25),
);

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          radius: 80.0,
          backgroundColor: Colors.transparent,
          child: Image.asset('images/logo.png'),
        ));

    final loginbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 150.0,
          height: 20.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Login', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    final text2 = Text(
      '     Kamu Belum Punya Akun? Silahkan Daftar Dibawah Ini!     ',
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w900,
          fontStyle: FontStyle.italic,
          fontFamily: 'Open Sans',
          fontSize: 10),
    );

    final signupbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(30.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 150.0,
          height: 20.0,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUp()),
            );
          },
          color: Colors.lightBlueAccent,
          child: Text('Sign Up', style: TextStyle(color: Colors.white)),
        ),
      ),
    );

    return Scaffold(
        body: Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF80DEEA), Colors.blue])),
        child: ListView(
          padding: EdgeInsets.only(left: 30.0, right: 30.0),
          children: <Widget>[
            SizedBox(height: 200.0),
            text,
            SizedBox(height: 50.0),
            logo,
            SizedBox(height: 48.0),
            loginbutton,
            text2,
            signupbutton,
          ],
        ),
      ),
    ));
  }
}
