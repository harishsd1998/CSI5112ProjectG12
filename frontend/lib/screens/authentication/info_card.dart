import 'package:flutter/material.dart';

// ignore: must_be_immutable
class InfoCard extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  InfoCard({required this.text, required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
        child: Card(
          color: Colors.white,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
          child: ListTile(
            leading: Icon(
              icon,
              color: Colors.teal,
            ),
            title: Text(
              text,
              style: TextStyle(
                color: Colors.teal,
                fontSize: 20,
              ),
            ),
          ),
        ));
  }
}
