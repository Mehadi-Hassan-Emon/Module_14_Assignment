import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  //for data
  // final String phone;
  // final String? password;
  // const Dashboard({super.key,required this.phone,this.password});

  //new
  Dashboard({super.key});
  //
  @override
  Widget build(BuildContext context) {
   //new
    final args = ModalRoute.of(context)?.settings.arguments as Map;//as a Map, single data pathaile use ora hoi
    //
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        //child: Text(phone,style: TextStyle(
        child: Text(args['phone'].toString(),style: TextStyle(//new//phone just single data
          color: Colors.pinkAccent
        ),),
      ),
    );
  }
}
