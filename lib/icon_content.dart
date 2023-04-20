import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(this.icon, this.label);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(children: [
      Icon(icon, size: 80.00),
      SizedBox(height: 15.0),
      Text(label, style: TextStyle(fontSize: 18.0, color: Colors.white)),
    ]));
  }
}
