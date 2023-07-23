
import 'package:basketball_points/cubit/counter_cubit.dart';

import 'screens/point screen.dart';
import 'screens/teamsName.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


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
    return  BlocProvider(
      create: (context)=>CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TeamsNames(),
      ),
    );
  }
}

