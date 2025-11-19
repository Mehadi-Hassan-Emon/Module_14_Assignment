import 'package:flutter/material.dart';
class Buildbutton extends StatelessWidget {
  String text;//text
  Color?color;//color
  final VoidCallback onclick;//function


  Buildbutton({
    super.key,
    required this.onclick,required this.text, this.color
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              backgroundColor:color?? Colors.grey[800],//color thakle color show korbe na thakle show korbe nah
            ),
            onPressed: onclick,
            child: Text(text,
              style: TextStyle(fontSize: 25,color: Colors.white),
            )
        ),
      ),
    );
  }
}