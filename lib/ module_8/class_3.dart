import 'package:flutter/material.dart';
class Gridview extends StatelessWidget {
  const Gridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(
              width: 150,
                height: 150,
              decoration:BoxDecoration(//jodi just color lageh tahole color bahire hobe
                //color: Colors.teal,
                gradient: LinearGradient(//box multiple color
                    colors: [Colors.blue,Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(10),
                // box shadow
                boxShadow: [//multiple neya jai
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 4,
                    offset: Offset(10,10),
                  ),
                  BoxShadow(
                    color: Colors.redAccent,
                    blurRadius: 4,
                    offset: Offset(10,10),
                  ),
                ]
              ),
              //new
              //child: Text('This is container'),
              //container multiple add korle row,column use kora
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.phone,size: 50,color: Colors.white,),
                  Text('Phone',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              
              
            )
          ],
        ),
      ),

    );
  }
}
