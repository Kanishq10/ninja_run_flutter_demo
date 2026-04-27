import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: NinjaCard()));

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Ninja ID Card',
        style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500 , fontSize: 35),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/download.jpeg'),
                radius: 40.0,
              )
            ),
            Divider(
              height: 90,
              color: Colors.grey,
            ),
            Text(
              'Name',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            Text(
              'Chun-li',
              style: TextStyle(color: Colors.blueAccent[200], letterSpacing: 2.0, fontSize: 28.0 , fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.00),
            Text(
              'Ninja Level',
              style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
            ),
            Text(
              '$ninjaLevel',
              style: TextStyle(color: Colors.blueAccent[200], letterSpacing: 2.0, fontSize: 28.0 , fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30.00),
            Row(
              children: <Widget>[
                Icon(Icons.email, color: Colors.grey[400]),
               SizedBox(width: 10.0),
                Text(
                  "chun.li@ninja.com",
                  style: TextStyle(color: Colors.grey[400], fontSize: 18.0 , letterSpacing: 1.0)
                )
                ]
            )
          ],
        ),
      ),
    );
  }
}
