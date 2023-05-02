import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({this.initialData = 0}) : super(initialData);

  int initialData;
  int? current;
  int? next;

  void increment() {
    emit(state + 1);
  }

  void decrement() {
    emit(state - 1);
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    current = change.currentState;
    next = change.nextState;
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print(error);
  }
}

// ignore: must_be_immutable
class StreamPage extends StatelessWidget {
  StreamPage({super.key});

  CounterCubit myCounter = CounterCubit();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cubit App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          StreamBuilder(
              initialData: myCounter.initialData,
              stream: myCounter.stream,
              builder: (context, snapshot) {
                return Center(
                  child: Column(
                    children: [
                      Text(
                        snapshot.data.toString(),
                        style: const TextStyle(
                          fontSize: 50,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      // Text(
                      //   "current : ${myCounter.current}",
                      //   style: const TextStyle(
                      //     fontSize: 50,
                      //   ),
                      // ),
                      // Text(
                      //   "next : ${myCounter.next}",
                      //   style: const TextStyle(
                      //     fontSize: 50,
                      //   ),
                      // ),
                    ],
                  ),
                );
                // if (snapshot.connectionState == ConnectionState.waiting) {
                //   return const Center(
                //     child: Text(
                //       "Loading...",
                //       style: TextStyle(
                //         fontSize: 50,
                //       ),
                //     ),
                //   );
                // } else {
                // }
              }),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                  onPressed: () {
                    myCounter.decrement();
                  },
                  icon: const Icon(Icons.remove)),
              IconButton(
                  onPressed: () {
                    myCounter.increment();
                  },
                  icon: const Icon(Icons.add))
            ],
          )
        ],
      ),
    );
  }
}
