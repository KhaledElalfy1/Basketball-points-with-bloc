
import 'screens/teamsName.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(BasketballPoints());
}

class BasketballPoints extends StatefulWidget {
  @override
  State<BasketballPoints> createState() => _BasketballPointsState();
}

class _BasketballPointsState extends State<BasketballPoints> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false,
      home: TeamsNames(),
    );
  }
}

