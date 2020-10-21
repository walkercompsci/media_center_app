import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card_2questionmark.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'wowie', text: 'have a nice day'),
    Quote(author: 'wow', text: 'have a niceeeeeeeee day'),
    Quote(author: 'owie', text: 'have a nice daygggggggggggggg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text('Awesome Quotes'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) =>QuoteCard(
              quote: quote,
              delete: () {
                setState(() {
                  quotes.remove(quote);
                });
              }
          )).toList(),
        )
    );
  }
}


