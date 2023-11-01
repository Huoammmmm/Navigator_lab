import 'package:flutter/material.dart';
import './second_screen.dart';

class FirstScreen extends StatelessWidget {
  final int index = 0;
  const FirstScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('First Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/SecondScreen');
          },
          child: Text('Go To Second Screen'),
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
            label: 'Second Screen'
            ),
        ],
        onTap: (int index){
          index = 1;
          if (index == 1 ){
            Navigator.pushNamed(context, '/SecondScreen');
          }
        },
      ),
    );
  }
}