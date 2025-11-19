import 'package:flutter/material.dart';
class FList extends StatelessWidget {
  const FList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
          itemCount:20,
        itemBuilder: (context,index){
            return Card(
              child: ListTile(
                title: Text('Mehadi'),
                subtitle: Text('029393939329'),
                leading: Icon(Icons.phone),
                trailing: Icon(Icons.delete,color: Colors.red,),
              ),
            );
        }
      ),
    );
  }
}
