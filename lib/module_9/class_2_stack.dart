import 'package:flutter/material.dart';
import 'package:flutter_13_new/module_9/widget/city_card.dart';
class Class2Stack extends StatelessWidget {
  const Class2Stack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('stack'),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            CityCard(img: 'https://www.visitlondon.com/things-to-do/nightlife/101-things-to-do-at-night-in-london',title: 'London', rating: '4.8',),








            
            // Stack(
            //   children: [
            //     Container(
            //       height: 200,
            //       width: 300,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(50),
            //         image: DecorationImage(
            //             image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsIF1ab2JKv4w_EmOgXFCnd5iJQjmHA06E9g&s')
            //         ),
            //       ),
            //       child: Container(
            //         alignment: Alignment.bottomLeft,
            //         padding: EdgeInsets.all(8),
            //         decoration: BoxDecoration(
            //           borderRadius: BorderRadius.circular(12),
            //           gradient: LinearGradient(
            //             begin: Alignment.topCenter,
            //             end:Alignment.bottomCenter,
            //             colors:[Colors.transparent,Colors.black12]
            //           )
            //         ),
            //       ),
            //     ),
            //
            //     Positioned(
            //       top: 20,
            //      left: 50,
            //       right: 10,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //
            //         children: [
            //           // Text('Bangladesh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            //           ElevatedButton(
            //             style: ElevatedButton.styleFrom(
            //               backgroundColor: Colors.white,
            //               foregroundColor: Colors.orange,
            //               shape: RoundedRectangleBorder(
            //                 borderRadius: BorderRadius.circular(10)
            //               ),
            //               padding: EdgeInsets.all(8),
            //             ),
            //               onPressed: (){}, child: Text(' 5.0',
            //             style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
            //           )
            //           ),
            //           SizedBox(),
            //           IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
            //         ],
            //       ),
            //     ),
            //     Positioned(
            //       bottom:20,
            //       left: 50,
            //       right: 10,
            //       child: Row(
            //         mainAxisAlignment: MainAxisAlignment.center,
            //
            //         children: [
            //            Text('Bangladesh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
            //
            //           SizedBox(),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            
            
            
            
            
            
            
            
            

            SizedBox(height: 20,),
            Stack(
              children: [
                Container(
                  color: Colors.red,
                  height: 200,
                  width: 200,
                ),
                Positioned(
                  bottom: 50,
                  left: 10,
                  right: 10,
                  top: 10,
                  child: Container(
                    color: Colors.greenAccent,
                    height: 150,
                    width: 180,
                  ),
                ),
                Positioned(
                  top: 50,
                  right: 20,
                   bottom: 20,
                  child: Container(
                    color: Colors.purpleAccent,
                    height: 100,
                    width: 150,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            //
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage('https://scontent.fdac207-1.fna.fbcdn.net/v/t39.30808-6/476347453_982000777159722_2122232433640168046_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeE_ozQwav0EAjA7WjSukyqdbvvH5ris-kxu-8fmuKz6TJhBxV3UKgEdNIVFMC2uAcmZjW9eYmfmX7Ghdq_WHpqf&_nc_ohc=XZB1JcDgtjwQ7kNvwEBvm8h&_nc_oc=Admp8ZmJUP6kghxmPWeGyofiInNg9RpiRdVSAEdb0SAnOGtfF7PAehCE1FgoJTdL4P0&_nc_zt=23&_nc_ht=scontent.fdac207-1.fna&_nc_gid=-hQOc5hqiSksWM0ZC8zB5Q&oh=00_AfdAbB_ky79rH8944g6s12_faPZ8So-QGZQY3U2-yakK_g&oe=68FC6822'),
                ),
                Positioned(
                  bottom: 15,
                  right: 5,
                  child: Container(
                    width: 20,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white,width: 3)
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}


