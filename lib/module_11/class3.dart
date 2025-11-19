import 'package:flutter/material.dart';
class Class3 extends StatelessWidget {
  const Class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class3'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text('Test',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text('Test',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text('Test',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text('Test',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Expanded(//expanded holo jotoutku available jaiga takbe tototuku te build korbe
            child: ListView.builder(
              itemCount: 20,
                itemBuilder: (context,index){
                return ListTile(
                  title: Text(index.toString()),
                );
                }
            ),
          ),
          Container(
            height: 200,
            width: 200,
            color:Colors.red,
          ),
          Flexible(
            flex: 1,//flex holo container ta kototuku jaiga nibe
            child: Container(
              height: 200,
              width: 200,
              color:Colors.green,
            ),
          ),
          Flexible(
            flex: 2,//flex holo container ta kototuku jaiga nibe
            child: Container(
              height: 200,
              width: 200,
              color:Colors.grey,
            ),
          ),

        ],
      ),
    );
  }
}
