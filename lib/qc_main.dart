import 'package:flutter/material.dart';
import 'quote.dart';

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

  Widget quoteTemplate(quote){
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 26.0, 0),
      child: Column(
        children: <Widget>[
          Text(
            quote.text,
            style: TextStyle(
              fontSize:18.0,
              color:Colors.grey[600],
            )
          ),
          SizedBox(height: 6.0),
          Text(
            quote.author,
            style: TextStyle(
              fontSize: 14.0,
              color: colors.grey[800]
            )
          )
        ],
      ),
    );
  }

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
        children: quotes.map((quote) =>quoteTemplate(quote)).toList(),
      )
    );
  }
}


