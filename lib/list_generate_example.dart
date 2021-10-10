import 'package:flutter/material.dart';

class ListGenerateExample extends StatelessWidget {
  const ListGenerateExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) =>
        Container(
          height: 100,
          margin: EdgeInsets.all(5),
          color: Colors.red,
        ),
      ),
    );
  }
}
