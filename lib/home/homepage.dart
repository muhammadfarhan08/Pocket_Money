import 'package:flutter/material.dart';
import 'package:i_rich/home/event.dart';
import 'package:i_rich/home/home.dart';
import 'package:i_rich/home/note.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _currentIndex = 0;
  final List<Widget> _children = [HomePage(), NotePage(), EventPage()];

  void onTappedBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTappedBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: new Icon(Icons.home),
                // ignore: deprecated_member_use
                title: new Text("Home")),
            BottomNavigationBarItem(
                icon: new Icon(Icons.note),
                // ignore: deprecated_member_use
                title: new Text("Note")),
            BottomNavigationBarItem(
                icon: new Icon(Icons.event_note_rounded),
                // ignore: deprecated_member_use
                title: new Text("Event")),
          ],
        ));
  }
}
