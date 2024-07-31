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
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () {},
          icon: Icons.mail,
          label: Text('Mail me'),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          // Your onPressed code here
        },
        child: Icon(
          Icons.image,
          color: Colors.blue,
          size: 50.0,
        ), // Adding text inside the button
      ),
    );
  }
}

