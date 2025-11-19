import 'package:flutter/material.dart';
class Res extends StatelessWidget {
  const Res({super.key});

  @override
  Widget build(BuildContext context) {

    Size screenSize =  MediaQuery.of(context).size;//// screen size onujaye height width controll
    bool isTablet = screenSize.width>600;//jodi screensize 600 hoi tablet otherwise mobile

    return Scaffold(
      appBar: AppBar(
        title: Text('Resposive'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // button gular modde check korbo if else diye mane jodi mobile hoi size koto ar onnogula hole koto
              Text('i am${isTablet? "Tablet" : "Mobile"}',////jodi istablet hoi tahole tablet else mobile
              style: TextStyle(
                fontSize: 30,
                color: Colors.green
              ),
              ),
              isTablet? Row(
          children: [
          Icon(Icons.phone,size: 50,),
          SizedBox(width: 10,),
          Icon(Icons.person,size: 50,),
          SizedBox(width: 10,),
          Icon(Icons.home,size: 50,),
          SizedBox(width: 10,),
          Icon(Icons.account_balance,size: 50,),

          ],
        )   : Column(
                children: [
                  Icon(Icons.phone,size: 50,),
                  SizedBox(height: 10,),
                  Icon(Icons.person,size: 50,),
                  SizedBox(height: 10,),
                  Icon(Icons.home,size: 50,),
                  SizedBox(height: 10,),
                  Icon(Icons.account_balance,size: 50,),

                ],
              ),


              //
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Container(
                height: screenSize.height*0.2,
                width: screenSize.width*0.5,
                color: Colors.green,
              ),

              //kibabe size boro hoi ta dekha
              SizedBox(height: 10,),
              Text(screenSize.width.toString(),
                  style: TextStyle(
                  fontSize:.045* screenSize.width,
              ),
              ),
              //


              SizedBox(height: 20,),
              Text(
                'Hello Text',
                style: TextStyle(fontSize: 30,
                  color: Colors.red
                ),
              ),
              SizedBox(height: 10,),
              Text('Hello Text',
                style: TextStyle(
                    fontSize:.045* screenSize.width,
                  color: Colors.grey
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
