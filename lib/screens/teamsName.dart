
import 'package:basketball_points/screens/point%20screen.dart';
import 'package:flutter/material.dart';
class TeamsNames extends StatelessWidget {
  final TextEditingController _teamA = TextEditingController();
  final TextEditingController _teamB = TextEditingController();

  TeamsNames({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
              appBar: AppBar(
                  backgroundColor: Colors.orange,
                title: const Text('Names'),
              ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(

          // mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const CircleAvatar(
                backgroundImage:AssetImage('assets/image/Basketball-pana.png'),
              radius: 120,

            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: _teamA,
                decoration:const InputDecoration(
                    label: Text('Team A'),
                  hintText: 'Enter A team name',
                  border: OutlineInputBorder()
                ),
              ),
            ),
            const SizedBox(height: 20,),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16.0),
               child: TextField(
                 controller: _teamB,
                decoration:const InputDecoration(

                  label: Text('Team B'),
                    hintText: 'Enter second B name',
                    border: OutlineInputBorder()
                ),
            ),
             ),
            const SizedBox(height: 20,),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PointScreen(teamA: _teamA.text, teamB: _teamB.text);
                },));
              },
              child: Container(

                height: 65,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),

                child:  const Center(
                    child: Text('Start',
                      style: TextStyle(fontSize: 30,
                        color: Colors.white
                      ),

                    )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
