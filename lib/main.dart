//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var catSize = 18.0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(children: <Widget>[
            Container(
              width: double.infinity,
              height: 150.0,
              color: Colors.grey.shade600,
              padding: EdgeInsets.fromLTRB(0, 110.0, 0, 0),
              child: Text(
                'Username',
                //textAlign: TextAlign.end,
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  letterSpacing: 2.0,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Profile Clicked');
              },
              child: ListTile(
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Statistics Clicked');
              },
              child: ListTile(
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.insert_chart,
                  color: Colors.black,
                ),
                title: Text(
                  'Statistics',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                print('Settings Clicked');
              },
              child: ListTile(
                tileColor: Colors.grey.shade300,
                leading: Icon(
                  Icons.settings,
                  color: Colors.black,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                  ),
                ),
              ),
            ),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.grey.shade900,
          title: Text(
            'Choose A Category',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
          actions: <Widget>[
            IconButton(
              tooltip: 'Search',
              onPressed: () {
                print('Search clicked');
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: TextButton( 
                    onPressed: () {
                      print('Movies Clicked');
                    },
                    child: Card(
                        child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25.0),
                        color: Colors.brown.shade300,
                        child: Text(
                          'Movies',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: catSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('Sports Clicked');
                    },
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25.0),
                        color: Colors.brown.shade300,
                        child: Text(
                          'Sports',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: catSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('History Clicked');
                    },
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25.0),
                        color: Colors.brown.shade300,
                        child: Text(
                          'History',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: catSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('Politics Clicked');
                    },
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25.0),
                        color: Colors.brown.shade300,
                        child: Text(
                          'Politics',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: catSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('Video Games Clicked');
                    },
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25.0),
                        color: Colors.brown.shade300,
                        child: Text(
                          'Video Games',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: catSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      print('Technology Clicked');
                    },
                    child: Card(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(25.0),
                        color: Colors.brown.shade300,
                        child: Text(
                          'Technology',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: catSize,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
