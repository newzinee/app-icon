import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appbar icon menu'),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart), 
            onPressed: () { 
              print('Shopping cart button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search), 
            onPressed: () { 
              print('search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
             currentAccountPicture: CircleAvatar(
               backgroundImage: AssetImage('assets/beach.png'),
               backgroundColor: Colors.white,
             ),
             accountName: Text('yoojin'),
             accountEmail: Text('qvo7896@gmail.com'),
             onDetailsPressed:(){
               print('arrow is clicked');
             },
             decoration: BoxDecoration(
               color: Colors.red[200],
               borderRadius: BorderRadius.only(
                 bottomLeft: Radius.circular(40.0),
                 bottomRight: Radius.circular(40.0)
               )
             ),
            )
          ],
        ),
      ),
    );
  }
}