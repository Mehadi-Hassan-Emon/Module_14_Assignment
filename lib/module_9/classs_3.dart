import 'package:flutter/material.dart';
import 'package:flutter_13_new/module_9/class_2_stack.dart';
import 'package:flutter_13_new/module_9/heropage.dart';
import 'package:flutter_13_new/module_9/widget/city_card.dart';
class OwnWidget extends StatelessWidget {
  const OwnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CityCard(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsIF1ab2JKv4w_EmOgXFCnd5iJQjmHA06E9g&s',title: 'London', rating: '4.8',),
                  CityCard(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsIF1ab2JKv4w_EmOgXFCnd5iJQjmHA06E9g&s',title: 'Dhaka', rating: '4.5',),
                  CityCard(img: 'https://encrypted-tbn0.gstatic.com/licensed-image?q=tbn:ANd9GcRBi_VeNJ6ORu44InZ0ZAXFSXVEqJvwx_yC6Z72r35noJGjeo3f9toVcXhWEx7bLOi7s0Bj3qqtbhk8VwNaKDLSA73QvHjJnJ3fLTjbDQ',title: 'Dubai', rating: '4.9',),
                  CityCard(img: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsIF1ab2JKv4w_EmOgXFCnd5iJQjmHA06E9g&s',title: 'London', rating: '4.8',),
                ],
              ),
            ),
              ///on click animation
              ///
              ///
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.push(context, PageRouteBuilder(pageBuilder:
                    (context,animation,secondaryAnimation)=>
                        Class2Stack(),
                  transitionsBuilder: (context,animation,secondaryAnimation,child){
                   const begin =Offset(1, 0);
                   const end =Offset.zero;
                   const curve = Curves.bounceIn;
                   var tween = Tween(begin: begin,end: end).chain(CurveTween(curve: curve));
                   return SlideTransition(position: animation.drive(tween),child: child,);
                  }
                )
                );
              }, child: Text('Previous Class')
              ),
              
              //arekta
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Heropage()));
              }, child: Hero(tag: 'Previous Class', child: Text('Previous Class,'))//eita dekhanor jonno ekta heropage nise
              ),
          ]
          ),
        
      ),
    );
  }
}
