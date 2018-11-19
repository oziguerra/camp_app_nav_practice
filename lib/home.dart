//home page of the memeboard app

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 1;
  final _widgetOptions = [
    Text('Index 0: Home'),
    Text('Index 1: Business'),
    Text('Index 2: School'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Camp organizer'),
      ),
      body: SafeArea(
          child: Center(
          child: //_widgetOptions.elementAt(_selectedIndex),
            _screenSelector(_selectedIndex)
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.business),
              title: Text('Supplies')),
          BottomNavigationBarItem(
              icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;

    });
  }

  //TODO: 3 pages for the app
  //TODO: home: displays info cards on popular hikes, has images on it and slide to display more info like hiking time and driving time from van
  Widget _screenSelector(int selectedIndex)
  {
    switch (selectedIndex)
    {
      case 0:
        return GridView.count(
            crossAxisCount: 2,
            padding: EdgeInsets.all(16.0),
            children: <Widget>[
              Center(
                child: Text('Hike 1'),
              ),

              Text('Hike 2'),
              Text('Hike 3')
            ],
        );
    }
  }

  //TODO: Supply organizer: lists item with counter, two buttons to add or subtract item: future, interactive online with firebase

  //TODO: map with nearby hikes


  //TODO: for home, card generator
}
