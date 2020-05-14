import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'qoute.dart';

class QouteCard extends StatelessWidget {
  final Qoute qoute;
  final Function delete;
  QouteCard({this.qoute, this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(8.0, 8.0, 8.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
                qoute.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                )
            ),
            SizedBox(height: 0.1),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                      qoute.author,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[800],
                      )
                  ),
                ),

                Expanded(
                  flex: 2,
                  child: FlatButton.icon(
                    onPressed: delete,
                    label: Text('Delete Quote'),
                    icon: Icon(Icons.delete),
                  ),
                ),
              ],
            ),

          ],

        ),
      ),
    );
  }
}
