import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _buildNavigationButton(
              context,
              title: 'Simple Interest Calculator',
              route: '/simple-interest',
            ),
            const SizedBox(height: 16),
            _buildNavigationButton(
              context,
              title: 'Area of Circle',
              route: '/area-circle',
            ),
            const SizedBox(height: 16),
            _buildNavigationButton(
              context,
              title: 'Arithmetic Operations',
              route: '/arithmetic',
            ),

          ],
        ),
      ),
    );
  }
}

Widget _buildNavigationButton(BuildContext context,
{required String title, required String route}){
  return ElevatedButton(
    onPressed: (){
      Navigator.pushNamed(context, route);
    },
    style: ElevatedButton.styleFrom(
        textStyle: TextStyle(fontSize: 30),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        side: const BorderSide(
          color: Colors.amber,
          width: 2,
        ),
        shape: const BeveledRectangleBorder(borderRadius: BorderRadius.zero),
        padding: const EdgeInsets.all(50)
    ),
    child: Text(title),
  );
}