import 'package:flutter/material.dart';

class ColumnView extends StatelessWidget {
  const ColumnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.star,
              size: 90,
            ),
            Icon(
              Icons.star,
              size: 80,
            ),
            Spacer(), //yesley bioch ma space halxa
            Icon(
              Icons.star,
              size: 60,
            )
          ],
        ),
      ),
    );
  }
}
