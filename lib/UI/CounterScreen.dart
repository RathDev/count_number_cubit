import 'package:count_number_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter Screen'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter Number : $state'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  RaisedButton(
                    onPressed: () {
                      context.read<CounterCubit>().decrement();
                    },
                    child: Text('Decrement'),
                  ),
                  RaisedButton(
                    onPressed: () {
                      context.read<CounterCubit>().increment();
                    },
                    child: Text('Increment'),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
