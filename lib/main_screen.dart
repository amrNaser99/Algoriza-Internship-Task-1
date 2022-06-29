import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('Hello',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,),)
        ],
      ),
    );
  }
}
