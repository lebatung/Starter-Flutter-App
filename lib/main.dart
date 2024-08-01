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
        children: <Widget>[
          Text('Rows 1'),
          ElevatedButton(
            onPressed: (){},
            child: Text('Click'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('GAP'),
          )
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
