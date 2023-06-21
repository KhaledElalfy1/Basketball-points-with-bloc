
import 'package:basketball_points/screens/teamsName.dart';
import 'package:flutter/material.dart';
class PointScreen extends StatefulWidget {
   final String teamA,teamB;


   const PointScreen({super.key, required this.teamA, required this.teamB});

  @override
  State<PointScreen> createState() => _PointScreenState();
}

class _PointScreenState extends State<PointScreen> {
  int teamAPoints=0;
  int teamBPoints=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title:const Text('Points Counter'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 500,
                child: Column(
                  children: [
                    Text(widget.teamA,
                      style: const TextStyle(
                          fontSize: 35
                      ),
                    ),
                    Text('$teamAPoints',
                      style:  const TextStyle(
                          fontSize: 120
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const  Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints++;
                          });
                        },
                        child: const  Text('Add 1 point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                    ),
                    const Spacer(flex: 1,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize:  const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints +=2;
                          });
                        },
                        child: const Text('Add 2 point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                    ),
                    const Spacer(flex: 1,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamAPoints +=3;
                          });
                        },
                        child: const Text('Add 3 point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                    ),
                    const Spacer(flex: 16,),
                  ],
                ),
              ),
              const SizedBox(
                height: 500,
                child: VerticalDivider(color: Colors.grey,
                  thickness: 1,
                  indent: 15,
                  endIndent: 100,
                ),
              ),
              SizedBox(
                height: 500,
                child: Column(
                  children: [
                    Text(widget.teamB,
                      style: const TextStyle(
                          fontSize: 35
                      ),
                    ),
                    Text('$teamBPoints',
                      style: const TextStyle(
                          fontSize: 120
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints++;
                          });
                        },
                        child: const Text('Add 1 point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                    ),
                    const Spacer(flex: 1,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints +=2;
                          });
                        },
                        child: const Text('Add 2 point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                    ),
                    const Spacer(flex: 1,),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.orange,
                            minimumSize: const Size(150, 50)
                        ),
                        onPressed: (){
                          setState(() {
                            teamBPoints +=3;
                          });
                        },
                        child: const Text('Add 3 point',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black
                          ),
                        )
                    ),
                    const Spacer(flex: 16,),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  minimumSize: const Size(150, 50)
              ),
              onPressed: (){
                setState(() {
                  teamAPoints=0;
                  teamBPoints=0;
                });
              },
              child: const Text('Reset',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              )
          ),
        ],
      ),
    );
  }
}

