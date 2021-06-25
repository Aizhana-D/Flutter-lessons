import 'dart:async';
import 'dart:math';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter/material.dart';
part 'random_block_event.dart';
part 'random_block_state.dart';

class RandomBlockBloc extends Bloc<RandomBlockEvent, RandomBlockState> {
  RandomBlockBloc()
      : super(RandomBlockState(
          width: 80,
          height: 80,
          color: Colors.purple,
          borderRadius: BorderRadius.circular(8),
        ));

  @override
  Stream<RandomBlockState> mapEventToState(
    RandomBlockEvent event,
  ) async* {
    if (event is RandomContainerEvent) 
    {
      final random = Random();
      yield RandomBlockState(
        width: random.nextInt(300).toDouble(),
        height: random.nextInt(300).toDouble(),
        color: Color.fromRGBO(
          random.nextInt(300),
          random.nextInt(300),
          random.nextInt(300),
          1,
        ),
        borderRadius: BorderRadius.circular(random.nextInt(100).toDouble()),
      );
    } 
    else if (event is ResetEvent) 
    {
      yield RandomBlockState(
          width: 100,
          height: 100,
          color: Colors.red,
          borderRadius: BorderRadius.circular(0));
    }
  }
}
