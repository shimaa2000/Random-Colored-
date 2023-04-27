import 'dart:math';

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_colored/presentation/controller/colored_states.dart';

///cubit for state management
class ColoredCubit extends Cubit<ColoredStates> {
  ///
  Color color = Colors.red;

  ///
  ColoredCubit() : super(ColoredStates());

  ///
  static ColoredCubit get(BuildContext context) => BlocProvider.of(context);

  ///change to generate random color
  void change() {
    const hex = 0xFFFFFF;
    color = Color((Random().nextDouble() * hex).toInt()).withOpacity(1.0);
    emit(ColoredStates());
  }
}
