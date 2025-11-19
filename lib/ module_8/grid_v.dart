import 'package:flutter/material.dart';
class GridV extends StatelessWidget {
  const GridV({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid View'),
        backgroundColor: Colors.blue,
      ),
      //Grid View builder e just index er difference
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 25,
            mainAxisSpacing: 25,
          ),
          itemCount: 20,
          itemBuilder: (context,index){
            return  Padding(
              padding:const EdgeInsets.all(8.0),
              child: Container(
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

                    Text('Phone-${index}',//difference

                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

              ),
            );

          }
      ),
      /////////////////////////////
      // body: GridView.count(
      //     crossAxisCount:3,
      //   padding: const EdgeInsets.all(10),
      //   crossAxisSpacing: 10,
      //   mainAxisSpacing: 10,
      //   children: List.generate(10,(index)=>
      //       Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Container(
      //                   width: 150,
      //                   height: 150,
      //                   decoration:BoxDecoration(//jodi just color lageh tahole color bahire hobe
      //         //color: Colors.teal,
      //           gradient: LinearGradient(//box multiple color
      //             colors: [Colors.blue,Colors.purple],
      //             begin: Alignment.topLeft,
      //             end: Alignment.bottomRight,
      //           ),
      //           borderRadius: BorderRadius.circular(10),
      //           // box shadow
      //           boxShadow: [//multiple neya jai
      //             BoxShadow(
      //               color: Colors.black,
      //               blurRadius: 4,
      //               offset: Offset(10,10),
      //             ),
      //             BoxShadow(
      //               color: Colors.redAccent,
      //               blurRadius: 4,
      //               offset: Offset(10,10),
      //             ),
      //           ]
      //                   ),
      //                   //new
      //                   //child: Text('This is container'),
      //                   //container multiple add korle row,column use kora
      //                   child: Column(
      //         mainAxisAlignment: MainAxisAlignment.center,
      //         children: [
      //           Icon(Icons.phone,size: 50,color: Colors.white,),
      //           Text('Phone',
      //             style: TextStyle(
      //               fontSize: 25,
      //               color: Colors.white,
      //             ),
      //           )
      //         ],
      //                   ),
      //
      //                 ),
      //       )
      //   ),
      // ),
    );
  }
}
