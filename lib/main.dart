import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));
class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<String> quotes = [
    'Imagination and fiction make up more than three quarters of our real life.',
    'A hurtful act is the transference to others of the degradation which we bear in ourselves.',
    'It usually takes me more than three weeks to prepare a good impromptu speech.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
        ),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote){
          return Text(quote);
        }).toList(),
      ),
    );
  }
}

