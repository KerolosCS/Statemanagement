import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:session/cubits/cubit/counter_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocConsumer<CounterCubit, CounterState>(
            listener: (context, state) {},
            builder: (context, state) {
              if (state is Success) {
                return const Text("Success");
              }

              return const Text("Initial state ...");
            },
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                  onPressed: () {
                    context.read<CounterCubit>().success();
                  },
                  child: const Text("Success")),
              OutlinedButton(
                  onPressed: () {


                  }, child: const Text("Loading ...")),
              OutlinedButton(onPressed: () {

                
              }, child: const Text("Failure")),
            ],
          )
        ],
      ),
    );
  }
}
