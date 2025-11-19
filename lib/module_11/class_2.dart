import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResPkg extends StatelessWidget {
  const ResPkg({super.key});

  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;//horyzontal and vertical set (potrait & landscope)
    return Scaffold(
      appBar: AppBar(),
      body: Center(//orientation == Orientation.landscape ?
        child: SingleChildScrollView(
          scrollDirection: orientation == Orientation.landscape ?Axis.horizontal:Axis.vertical,//ekhon landscope jehetu row hoiche so Vertical or horizontal thik korlam (orientaion e eibabe korte hoi)
          child:orientation == Orientation.landscape ?//if orientation jodi landscope hoi tahole row onujayi hobe otherwise potrait hole column
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //width 200 means (height width 200)
              Container(
                width: 200.r,
                height: 200.r,
                color: Colors.blue,

              ),





              Row(
                children: [
                  Container(
                    width: 0.5.sw,//0.5 means sw
                    height: 200.h,
                    color: Colors.teal,
                    child: Text('My Actual width ${0.5.sw}'
                        "My Actual Height:${200.h}"
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: 180,//fixed kora
                      maxWidth: 200,//fixed
                    ).hw,//hw dile height width aksathe kaj korbe
                    color: Colors.purpleAccent,
                    child: Text("Hello"),

                  ),

                ],
              ),



              Container(
                constraints: BoxConstraints(
                  maxHeight: 180,//fixed kora
                  maxWidth: 200,//fixed
                ).hw,//hw dile height width aksathe kaj korbe
                color: Colors.purpleAccent,
                child: Text("Hello"),

              ),



              Container(
                height: 200.h,//with res(pub.deb height h)move hove divice onujayi
                width: 200.w,//with res(pub.deb width w)move hove divice onujayi
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Text('Hello Text',
                style: TextStyle(
                    fontSize: 25
                ),
              ),
              Text('Hello Text Res',
                style: TextStyle(
                  fontSize: 25.sp,// res(pub.deb text.sp)move hove divice onujayi
                ),
              ),
            ],
          ) :
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //width 200 means (height width 200)
              Container(
                width: 200.r,
                height: 200.r,
                color: Colors.blue,
          
              ),
          
          
          


              Row(
                  children: [
                    Container(
                      width: 0.5.sw,//0.5 means sw
                      height: 200.h,
                      color: Colors.teal,
                      child: Text('My Actual width ${0.5.sw}'
                          "My Actual Height:${200.h}"
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxHeight: 180,//fixed kora
                        maxWidth: 200,//fixed
                      ).hw,//hw dile height width aksathe kaj korbe
                      color: Colors.purpleAccent,
                      child: Text("Hello"),
          
                    ),
          
                  ],
                ),

          
          
              Container(
                constraints: BoxConstraints(
                  maxHeight: 180,//fixed kora
                  maxWidth: 200,//fixed
                ).hw,//hw dile height width aksathe kaj korbe
                color: Colors.purpleAccent,
                child: Text("Hello"),
                
              ),
              
              
              
              Container(
                height: 200.h,//with res(pub.deb height h)move hove divice onujayi
                width: 200.w,//with res(pub.deb width w)move hove divice onujayi
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              ),
              SizedBox(height: 10,),
              Text('Hello Text',
                style: TextStyle(
                  fontSize: 25
                ),
              ),
              Text('Hello Text Res',
                style: TextStyle(
                    fontSize: 25.sp,// res(pub.deb text.sp)move hove divice onujayi
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
