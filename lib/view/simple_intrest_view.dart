import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestViewState();
}

class _SimpleInterestViewState extends State<SimpleInterest> {
  int principal = 0;
  double rate = 0;
  double time = 0;
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interest Calculation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextField(
              onChanged: (value) {
                principal = int.tryParse(value) ?? 0; // Graceful parsing
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Principal',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                rate = double.tryParse(value) ?? 0; // Graceful parsing
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Rate',
              ),
            ),
            const SizedBox(height: 8),
            TextField(
              onChanged: (value) {
                time = double.tryParse(value) ?? 0; // Graceful parsing
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Time',
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Result: $interest',
              style: const TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Calculate interest
                    interest = (principal * rate * time) / 100;
                  });
                },
                child: const Text('Calculate Interest'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
