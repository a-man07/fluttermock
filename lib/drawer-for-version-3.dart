import 'package:flutter/material.dart';
import 'version-3-stable.dart';

Drawer drawer(BuildContext context) {
  return Drawer(
      child: Container(
          color: Colors.teal[100],
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            Container(
              height: 90,
              child: DrawerHeader(
                child: Text(
                  'Navigation',
                  style: TextStyle(fontSize: 30),
                ),
                decoration: BoxDecoration(
                  color: Colors.teal,
                ),
              ),
            ),
            ListTile(
              title: Text('Calculator'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ListTile(
              title: Text('History'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => History()),
                );
              },
            )
          ])));
}
