import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),

      // body: Text('This is Home Page',
      //     style: TextStyle(
      //     fontSize: 50,
      //       color: Colors.redAccent,
      //       fontWeight: FontWeight.w100,
      //       //letterSpacing: 50,//word faka jaiga
      //       wordSpacing: 100,
      // ),
      // ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,///end,start,spacearound,spaceevanly,spacebetween
          children: [


            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('This is row',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.green,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('This is row',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('This is row',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('This is row',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('This is row',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('This is row',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text('This is row',
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.green,
                        fontWeight: FontWeight.bold
                    ),
                  ),
              
                ],
              ),
            ),












            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,//Bold
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),
            Text('This is Home Page',
              style: TextStyle(
                fontSize: 50,
                color: Colors.redAccent,
                fontWeight: FontWeight.w100,
                //letterSpacing: 50,//word faka jaiga
                //wordSpacing: 100,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
