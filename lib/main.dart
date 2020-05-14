import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'qoute.dart';
import 'qoutecard.dart';

void main() => runApp(MaterialApp(
  home: Qoutables(),
));

class Qoutables extends StatefulWidget {
  @override
  _QoutablesState createState() => _QoutablesState();
}

class _QoutablesState extends State<Qoutables> {
 List<Qoute> qoutes=[
   Qoute(author: 'Tunde Akin-Akinsanya', text:'If you dont loose it in your mind, you will soon have it in your hands'),
   Qoute(author: 'Mahatma Gandhi', text: 'The best way to find yourself is to lose yourself in the service of others'),
   Qoute(author: 'John Wooden', text:'Things turn out best for the people who make the best of the way things turn out'),
   Qoute(author:'Walt Whitman', text:'I am as bad as the worst, but, thank God, i am as good as the best'),
   Qoute(author: 'Oscar Wilde', text: 'I have the simplest taste. I am always satisfied with the best'),
   Qoute(author: 'Mark Twain', text: 'The secret of getting ahead is getting started')

 ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('Qoutable Quotes'),
        centerTitle: true,
        backgroundColor: Colors.grey[600],
      ),
      body: Column(
        children: qoutes.map((qoute)=>QouteCard(
            qoute: qoute,
            delete:(){
              setState(() {
                qoutes.remove(qoute);
              });
        })).toList()
    ),
    );
  }
}


