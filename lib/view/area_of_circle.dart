import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  int Radius = 0;
  double pi = 3.1415;
  double Area = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area Calculation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                Radius = int.tryParse(value) ?? 0; // Graceful parsing
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Radius',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Result: $Area',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Calculate Area
                    Area = Radius * pi * pi;
                  });
                },
                child: const Text('Area'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
