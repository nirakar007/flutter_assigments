import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArithmeticView extends StatefulWidget {
  const ArithmeticView({super.key});

  @override
  State<ArithmeticView> createState() => _ArithmeticViewState();
}

class _ArithmeticViewState extends State<ArithmeticView> {
  // int first = 0;
  // int second = 0;

  // TextEditingController
  final firstController = TextEditingController(text: '2');
  final secondController = TextEditingController(text: '3');
  int result = 0;

  // Global key for from state
  final myKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Arithmetic View"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: myKey,
          child: Column(
            children: [
              TextFormField(
                // onChanged: (value){
                //   first = int.tryParse(value) ?? 0;
                // },
                controller: firstController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter first number: ',
                  border: OutlineInputBorder(),
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please enter first number: ';
                  }
                  return null;
                },
              ),
              // invisible box for spacing
              const SizedBox(height: 10),
              TextFormField(
                // onChanged: (value){
                //   second = int.tryParse(value) ?? 0;
                // },
                controller: secondController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Enter second number: ',
                  border: OutlineInputBorder(),
          
                ),
                validator: (value){
                  if(value == null || value.isEmpty){
                    return 'Please enter second number: ';
                  }
                  return null;
                },
          
              ),
              const SizedBox(height: 10),
          
              Text(
                'Result: $result',
                style: const TextStyle(fontSize: 40),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      // page lai refresh garako
                      if(myKey.currentState!.validate()){
                        setState(() {
                          // result = first + second;
                          result = int.parse(firstController.text)+int.parse(secondController.text);
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 25),
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        padding: const EdgeInsets.all(60)
                    ),
                    child: const Text('addition')),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: (){
                      // page lai refresh garako
                      if(myKey.currentState!.validate()){
                        setState(() {
                          result = int.parse(firstController.text)-int.parse(secondController.text);
                        });
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: TextStyle(fontSize: 25),
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
                        padding: const EdgeInsets.all(60)
                    ),
                    child: const Text('subtract')),
              )
            ],
          ),
        ),
      ),
    );
  }
}

