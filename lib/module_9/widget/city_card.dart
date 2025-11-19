import 'package:flutter/material.dart';
class CityCard extends StatelessWidget {

  //data change
  final String img,title,rating;
  const CityCard({
    super.key,required this.img,required this.title,required this.rating//constructor e clear
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                  image: NetworkImage(
                    img//datar jonno img pass
                  )
              ),
            ),
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end:Alignment.bottomCenter,
                      colors:[Colors.transparent,Colors.black12]
                  )
              ),
            ),
          ),
      
          Positioned(
            top: 20,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
              children: [
                // Text('Bangladesh',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.all(8),
                    ),
                    onPressed: (){}, child: Text(rating,//datar jonno rating pass
                  style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold),
                )
                ),
                SizedBox(),
                IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.red,))
              ],
            ),
          ),
          Positioned(
            bottom:20,
            left: 50,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
      
              children: [
                Text(title,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),//datar jonno titile pass
      
                SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}