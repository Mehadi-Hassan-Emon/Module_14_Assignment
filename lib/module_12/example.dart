import 'package:flutter/material.dart';
class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  bool ispasswordshow = false;//variable make korse
  bool isFav  = false;
  toggoleFav(){
    setState(() {
      isFav = !isFav;
    });
  }


  showPassword(){
    setState(() {
      ispasswordshow = !ispasswordshow;//iye jodi shoe thake hide hobe hide thakle click e show hobe
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            obscureText: ispasswordshow,
            decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: IconButton(
                //icon:Icon(Icons.remove_red_eye),
                icon:Icon(
                    ispasswordshow ?Icons.remove_red_eye:
                    Icons.visibility_off),//ispasswordshow jodi hoi tahole eye icon dekhabe otherwise visibility icon dekhabe

                  onPressed:showPassword ,//method ta pass hoiche jate eye click korle text show uonshow hoi
              )
            ),
          ),
          IconButton(onPressed: toggoleFav,
              icon: Icon(
                isFav? Icons.favorite:
                Icons.favorite_border,size: 100,
                color: Colors.purple,
              )
          )
        ],
      )),
    );
  }
}
