//import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var catFontSize = 18.0;
  var catWidthSize = double.infinity;
  var catHeightSize = 30.0;
  var catBoxColor = Colors.tealAccent;
  var drawerColor = Colors.teal.shade300;
  var drawerFontSize = 15.0;

  TextButton drawerCategory(
      {var drawerCategoryName, IconData iconName = Icons.favorite}) {
    return TextButton(
      onPressed: () {
        print('$drawerCategoryName Clicked');
      },
      child: ListTile(
        tileColor: drawerColor,
        leading: Icon(
          iconName,
          color: Colors.black,
        ),
        title: Text(
          '$drawerCategoryName',
          style: TextStyle(
            color: Colors.black,
            fontSize: drawerFontSize,
          ),
        ),
      ),
    );
  }

  TextButton appCategory({var appCategoryName}) {
    return TextButton(
      onPressed: () {
        print('$appCategoryName Clicked');
      },
      child: Card(
        elevation: 2.0,
        child: Container(
          height: catHeightSize,
          width: catWidthSize,
          //padding: EdgeInsets.all(25.0),
          color: catBoxColor,
          child: Text(
            '$appCategoryName',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.black,
              fontSize: catFontSize,
            ),
          ),
        ),
      ),
    );
  }

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
              color: Colors.teal.shade500,
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
            drawerCategory(
                drawerCategoryName: 'Profile', iconName: Icons.person),
            drawerCategory(
                drawerCategoryName: 'Statistics', iconName: Icons.insert_chart),
            drawerCategory(
                drawerCategoryName: 'Settings', iconName: Icons.settings),
          ]),
        ),
        appBar: AppBar(
          backgroundColor: Colors.teal.shade800,
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
          child: Container(
            color: Colors.teal.shade500,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.pan_tool,
                        color: Colors.yellow,
                        //size: 10.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Hey ,Welcome Back.....Let\'s play',
                        style: TextStyle(
                          fontSize: catFontSize,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  appCategory(appCategoryName: 'Movies'),
                  appCategory(appCategoryName: 'Sports'),
                  appCategory(appCategoryName: 'History'),
                  appCategory(appCategoryName: 'Politics'),
                  appCategory(appCategoryName: 'Video Games'),
                  appCategory(appCategoryName: 'Technology'),
                ]),
          ),
        ),
      ),
    );
  }
}
