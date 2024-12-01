import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({super.key});

  @override
  State<SimpleInterest> createState() => _SimpleInterestState();
}

class _SimpleInterestState extends State<SimpleInterest> {
  // TextEditingController
  final principal = TextEditingController();
  final rate = TextEditingController();
  final time = TextEditingController();
  double result = 0.0;

  // Global key for form state
  final myKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Simple Interest Calculator"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                controller: principal,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter principal amount:',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the principal amount';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: rate,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter annual interest rate (%):',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the interest rate';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: time,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter time (years):',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter the time';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (myKey.currentState!.validate()) {
                      setState(() {
                        // Calculate simple interest
                        double p = double.parse(principal.text);
                        double r = double.parse(rate.text);
                        double t = double.parse(time.text);
                        result = (p * r * t) / 100;
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                    padding: const EdgeInsets.symmetric(vertical: 16)
                  ),
                  child: const Text('Calculate Simple Interest'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
