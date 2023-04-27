import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_colored/presentation/controller/colored_cubit.dart';
import 'package:random_colored/presentation/controller/colored_states.dart';

///screen to change scaffold background color
class Home extends StatelessWidget {
  ////
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => ColoredCubit(),
      child: BlocConsumer<ColoredCubit, ColoredStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final app = ColoredCubit.get(context);

          return GestureDetector(
            onTap: () {
              app.change();
            },
            child: Scaffold(
              backgroundColor: app.color,
              body: const Center(
                  child: Text(
                'Hey There',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              )),
            ),
          );
        },
      ),
    );
  }
}
