import 'package:flutter/material.dart';
class Home2 extends StatelessWidget {
  const Home2 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ Text('Home-2',
            style: TextStyle(
              color: Colors.purple,
            ),
          ),
            //page theke back
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('Back'))
        ]
        ),
      ),

    );
  }
}
