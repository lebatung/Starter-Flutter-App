import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'App bar',
          style: TextStyle(
            fontFamily: 'Roboto',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.cyan,
              child: Text('One'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.pinkAccent,
              child: Text('One'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.redAccent,
              child: Text('One'),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Your onPressed code here
        },
        child: IconButton(
          onPressed: () {
            print('Clicked');
          },
          icon: Icon(
            Icons.mail,
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
