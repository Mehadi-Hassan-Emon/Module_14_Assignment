
import 'package:flutter/material.dart';
class Buttongrp extends StatelessWidget {
  const Buttongrp ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Button Group'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
             ElevatedButton(
               style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.green,//button color
                 foregroundColor: Colors.black,//button word color
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(50),//button shape
                 )
               ),
                 onPressed: (){},
                 child: Text('Submit')
             ),
            SizedBox(height: 30,),
            SizedBox(
              height: 50,
              width:100,//size infinity hoi
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,//button color
                      foregroundColor: Colors.black,//button word color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),//button shape
                      )
                  ),
                  onPressed: (){},
                  child: Text('Submit')
              ),
            ),

            SizedBox(
              height: 20,
            ),

            SizedBox(
              width: 300,
              height: 50,
              child: OutlinedButton(
                  onPressed:(){}, child:Text('Outline')
              ),
            ),

            SizedBox(height: 20,),
            TextButton(
                onPressed: (){}, child:Text('Read More')
            ),
            SizedBox(height: 20,),
            Icon(Icons.phone_android,size: 50,color: Colors.red,),
            SizedBox(height: 10,),
            IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red,size: 50,)),
            SizedBox(height: 20,),

            GestureDetector(
              onTap: (){
                print('Single Tap');//click korle terminal e single tap show korbe
              },


              onDoubleTap: (){
                print('Double click');//terminal e Double click show korbe
              },


              onLongPress: () {
                print('long press');//Click korle terminal e long press shhow korbe
              },
                child: Text('This is text')),





            
            SizedBox(height: 20,),
            InkWell(
              onTap: (){
                print('Single Tap');//click korle terminal e single tap show korbe
              },

              onDoubleTap: (){
                print('Double click');//terminal e Double click show korbe
              },

              onLongPress: () {
                print('long press');//Click korle terminal e long press shhow korbe
              },

              child: Text('Test-2',
                style: TextStyle(
                  fontSize: 50,
                ),
              ),
            )
          ],

        ),
      ),



      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
          foregroundColor: Colors.black,
          onPressed: (){
          print('Click Add');
          },
              child: Icon(Icons.add),
      ),
    );
  }
}
