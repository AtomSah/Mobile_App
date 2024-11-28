import 'package:first_assignment/view/Arithematic_view.dart';
import 'package:first_assignment/view/area_of_circle.dart';
import 'package:first_assignment/view/rich_text_view.dart';
import 'package:first_assignment/view/simple_intrest_view.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard', style: TextStyle(fontSize: 25)),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        // Center the content vertically
        // Center the content horizontally
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Arithematic page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ArithematicPage()),
                  );
                },
                child: const Text('Arithematic'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the Arithematic page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SimpleInterest()),
                  );
                },
                child: const Text('Simple Interest'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AreaOfCircle()),
                  );
                },
                child: const Text('Ar. of Circle'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RichTextView()),
                  );
                },
                child: const Text('Rich Text example'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
