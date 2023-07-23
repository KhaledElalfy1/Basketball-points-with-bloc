
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/counter_cubit.dart';
import '../cubit/counter_state.dart';


class PointScreenState extends StatelessWidget {
  String teamA,teamB;

  PointScreenState({super.key,required this.teamA,required this.teamB});

 
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit,CounterState>(builder: (context,state){
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
                       Text(teamA,
                        style: const TextStyle(
                            fontSize: 35
                        ),
                      ),
                      Text('${BlocProvider.of<CounterCubit>(context).teamAPoints}',
                        style:  const TextStyle(
                            fontSize: 120
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const  Size(150, 50)
                          ),
                          onPressed: (){
                                BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'A', increament: 1);
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
                              backgroundColor: Colors.orange,
                              minimumSize:  const Size(150, 50)
                          ),
                          onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'A', increament: 2);

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
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'A', increament: 3);

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
                       Text(teamB,
                        style:const TextStyle(
                            fontSize: 35
                        ),
                      ),
                      Text('${BlocProvider.of<CounterCubit>(context).teamBPoints}',
                        style: const TextStyle(
                            fontSize: 120
                        ),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'B', increament: 1);


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
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'B', increament: 2);


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
                              backgroundColor: Colors.orange,
                              minimumSize: const Size(150, 50)
                          ),
                          onPressed: (){
                            BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'B', increament: 3);


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
                    backgroundColor: Colors.orange,
                    minimumSize: const Size(150, 50)
                ),
                onPressed: (){
                  BlocProvider.of<CounterCubit>(context).teamIncreament(team: 'R', increament: 0);
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
    },
        listener: (context,state){


    }) ;
  }
}

