import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    Counter myCounter = BlocProvider.of<Counter>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Other page"),
      ),
      body: Center(
        child: BlocBuilder<Counter, int>(
          bloc: myCounter,
          builder: (context, state) {
            return Text(
              state.toString(),
              style: TextStyle(fontSize: 50),
            );
          },
        ),
      ),
    );
  }
}
