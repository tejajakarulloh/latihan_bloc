import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latihan_bloc/bloc/counter.dart';
import 'package:latihan_bloc/other/other_page.dart';
import 'package:latihan_bloc/pages/home_page.dart';
import 'package:latihan_bloc/static/not_found.dart';

class MyRouter {
  final Counter myCounter = Counter();

  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: HomePage(),
          ),
        );
      case '/other':
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: myCounter,
            child: OtherPage(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (context) => NotFoundPage(),
        );
    }
  }
}
