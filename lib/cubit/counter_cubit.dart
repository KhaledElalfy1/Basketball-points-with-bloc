import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit():super(CounterTeamAState());

  int teamAPoints=0;
  int teamBPoints=0;

  void teamIncreament({required String team,required int increament}){
    if(team=='A')
      {
        teamAPoints+=increament;
        emit(CounterTeamAState());
      }
    else if(team=='B') {
      teamBPoints+=increament;
      emit(CounterTeamBState());
    }
    else
      {
        teamAPoints=0;
        teamBPoints=0;
        emit(CounterTeamAState());
        emit(CounterTeamBState());
      }

  }

}