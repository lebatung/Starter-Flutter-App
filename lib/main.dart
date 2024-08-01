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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text('data'),
            ],
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(10.0),
              color: Colors.cyan,
              child: Text('One'),
            ),
          ),
          Container(
            padding: EdgeInsets.all(30.0),
            color: Colors.blueAccent,
            child: Text('Two'),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            color: Colors.pinkAccent,
            child: Text('Three'),
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
