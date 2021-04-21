import 'package:count_number_cubit/UI/CounterScreen.dart';
import 'package:count_number_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<CounterCubit>(
        create: (context)=>CounterCubit(),
        child: CounterScreen(),
      ),

    );
  }
}
