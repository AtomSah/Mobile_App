import 'package:flutter/material.dart';

class ArithematicPage extends StatefulWidget {
  const ArithematicPage({super.key});

  @override
  State<ArithematicPage> createState() => _ArithematicPageState();
}

class _ArithematicPageState extends State<ArithematicPage> {
  int first = 0;
  int second = 0;
  int result = 0;

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Calculation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              const SizedBox(
                height: 16,
              ),
              TextFormField(
                  onChanged: (value) {
                    first = int.tryParse(value) ?? 0; // Graceful parsing
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter First Number',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Enter first number';
                    }
                  }),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                onChanged: (value) {
                  second = int.tryParse(value) ?? 0; // Graceful parsing
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Second Number',
                ),
                validator: (Value) {
                  if (Value!.isEmpty) {
                    return 'enter second number';
                  }
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        result = first + second;
                      });
                    }
                  },
                  child: const Text('Addition'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        result = first - second;
                      });
                    }
                  },
                  child: const Text('Subtraction'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        result = first * second;
                      });
                    }
                  },
                  child: const Text('Multiplication'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      setState(() {
                        result = second != 0 ? (first ~/ second) : 0;
                      });
                    }
                  },
                  child: const Text('Division'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
