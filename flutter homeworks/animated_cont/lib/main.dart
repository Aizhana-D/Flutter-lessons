import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/random_block_bloc.dart';

void main() => runApp(AnimatedContainerApp());

class AnimatedContainerApp extends StatefulWidget {
  @override
  _AnimatedContainerAppState createState() => _AnimatedContainerAppState();
}

class _AnimatedContainerAppState extends State<AnimatedContainerApp> {
  final mybloc = RandomBlockBloc();

/*  @override
  void initState() {
    //mybloc.add(RandomContainerEvent());
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Animated Container',
          ),
        ),
        body: Stack(children: [
          Center(
              child: BlocBuilder<RandomBlockBloc, RandomBlockState>(
                  bloc: mybloc,
                  builder: (context, state) {
                    if (state is RandomBlockState) {
                      return AnimatedContainer(
                        // Use the properties stored in the State class.
                        width: state.width,
                        height: state.height,
                        decoration: BoxDecoration(
                          color: state.color,
                          borderRadius: state.borderRadius,
                        ),
                        duration: Duration(seconds: 1),
                        curve: Curves.slowMiddle,
                        // curve: state.curv,
                      );
                    }
                    return Text("Error");
                  })),
          Positioned(
              left: 15,
              bottom: 15,
              child: FloatingActionButton(
                onPressed: () {
                  mybloc.add(ResetEvent());
                },
                child: Icon(Icons.keyboard_arrow_left),
              ))
        ]),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            mybloc.add(RandomContainerEvent());
          },
          child: Icon(Icons.keyboard_arrow_right),
        ),
      ),
    );
  }
}
