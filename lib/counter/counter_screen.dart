import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterstatemanagementbloc/counter/cubit/cubit.dart';
import 'package:flutterstatemanagementbloc/counter/cubit/states.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CounterCubit(),
      child: BlocConsumer<CounterCubit,CounterStates>(
      listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
              body:Center(
                child: Row(
                  children: [
                    TextButton(onPressed: (){CounterCubit.get(context).minus();}, child: Text("Minus",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black
                    ),)),
                    Text("${CounterCubit.get(context).counter}",style: TextStyle(
                        color: Colors.blueAccent,fontSize: 25
                    ),),
                    TextButton(onPressed: (){CounterCubit.get(context).plus();}, child: Text("Plus",style: TextStyle(
                        fontWeight: FontWeight.bold,fontSize: 28,color: Colors.black
                    ),)),

                  ],
                ),
              )
          );
        },
    ),);
  }
}
