

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AreaOfCircle extends StatefulWidget {
  const AreaOfCircle({super.key});

  @override
  State<AreaOfCircle> createState() => _AreaOfCircleState();
}

class _AreaOfCircleState extends State<AreaOfCircle> {
  final TextEditingController radius = TextEditingController();
  double area = 0.0;
  double pi = 3.14;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Area of circle'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: radius,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Enter radius: ',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: (){
                  if(radius.text.isNotEmpty){
                    setState(() {
                      double r = double.parse(radius.text);
                      area = pi*r*r;
                    });
                  }
                },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                  padding: const EdgeInsets.all(16)
              ),
                child: const Text('Calculate'),
            ),
            const SizedBox(height: 16),
            Text(
              'Area of circle: $area',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),

    );
  }
}
