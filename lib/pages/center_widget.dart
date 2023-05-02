import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';

class CenterWidget extends StatelessWidget {
  const CenterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<Counter, int>(
        bloc: context.read<Counter>(),
        builder: (context, state) {
          return Text(
            state.toString(),
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
            ),
          );
        },
      ),
    );
  }
}
