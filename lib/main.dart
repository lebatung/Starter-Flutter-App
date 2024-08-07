import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QuoteList(),
    ));

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        text: 'Mama, just killed a man Mama, just killed a man',
        author: 'Ba Tung Le'),
    Quote(
        text:
            'Put a gun against his head, pulled my trigger, now he' 's dead' '',
        author: 'Ba Tung Le'),
    Quote(
        text: 'Mama, life had just begun Mama, just killed a man',
        author: 'Ba Tung Le'),
    Quote(
        text: 'But now I' 've gone and thrown it all away it all away',
        author: 'Ba Tung Le')
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
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}
