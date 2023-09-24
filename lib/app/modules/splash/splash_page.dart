import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('dwq'),
      ),
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: TextField(
            decoration: InputDecoration(
              label: Text('input teste'),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: (){},
          child: Text('data'),
        ),
      ]),
    );
  }
}
