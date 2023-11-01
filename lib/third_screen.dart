import 'package:flutter/material.dart';
import './first_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Text('Go back to first screen'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items : const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'First Screen',
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fit_screen),
            label: 'I don`t know how this shi works'
            ),
        ],
        onTap: (int index){
          index = 0;
          if (index == 0 ){
            Navigator.pushNamed(context, '/');
          }
        },
      ),
    );
  }
}