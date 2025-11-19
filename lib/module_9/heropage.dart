import 'package:flutter/material.dart';
class Heropage extends StatelessWidget {
  const Heropage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(tag: 'Previous Class', child:Text( 'Previous Class',style: TextStyle(fontSize: 40),),
      ),
      )
    );

  }
}
