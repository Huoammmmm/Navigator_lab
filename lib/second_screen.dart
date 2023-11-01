import 'package:flutter/material.dart';
import './third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/ThirdScreen');
          },
          child: Text('Go to third screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items : const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'Next Screen',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'Third Screen'
            ),
        ],
        onTap: (int index){
          index = 2;
          if (index == 2 ){
            Navigator.pushNamed(context, '/ThirdScreen');
          }
        },
      ),
    );
  }
}