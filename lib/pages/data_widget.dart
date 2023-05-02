import 'package:flutter/material.dart';
import 'package:latihan_bloc/pages/center_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 100,
      width: 200,
      child: CenterWidget(),
    );
  }
}
