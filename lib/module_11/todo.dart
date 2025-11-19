import 'package:flutter/material.dart';
class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  TextEditingController taskController =TextEditingController();
  List<String>tasks  = [];//data gula rakhsa

  addTask(){//add er jonno
    final task = taskController.text;//search bar e kichu nah likhleo ta add hoye jacce tai eta use kore solve korse
    if(task.isNotEmpty){//search bar e kichu nah likhleo ta add hoye jacce tai eta use kore solve korse

      setState(() {//text likhle ta add hoyar and refresh deyar jonno use hoi
        tasks.add(taskController.text);//value add er jonno method use korsi
        taskController.clear();
      });
    }else{

    }
  }

///edit er bitore update er kaj
  updateTask( String value ,int index){//update edit er jonno
    if(value.isNotEmpty){//search bar e kichu nah likhleo ta add hoye jacce tai eta use kore solve korse

      setState(() {//text likhle ta add hoyar and refresh deyar jonno use hoi
        tasks[index]= value;//tasks value vad diye new value assign
      });
    }else{

    }
  }


  deleteTask(int index){//delete korar jonno
    setState(() {
      tasks.removeAt(index);

    });
  }


  editTask(int index){
    final controller = TextEditingController(text: tasks[index]);//value input nite jemon controller use hoi temon edit kore input niteo controller use hoi
    //ar ekhane texfild er text e jate value ta show kore tai tasks[index] use korse
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Edit Task'),
      content: TextField(
        controller: controller,
      ),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);//cancel dile cancel diye back ashbe
        }, child: Text('Cancel')),
        ElevatedButton(onPressed: (){
          updateTask(controller.text,index);
          Navigator.pop(context);//update dile update diye back ashbe

        }, child: Text('Update'))
      ],
    ));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todo App'),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: Column(
        children: [
        Padding(
          padding:const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                  child: TextField(//buttorn er jaiga vad e avaiable jaigaite texfiled nite expanded diye wrap korsi
               controller: taskController,
                decoration: InputDecoration(
                  labelText: "Enter task"
                ),
              )),
              ElevatedButton(
                  onPressed: addTask,
                  child: Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  )
              )
            ],
          ),
        ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
                itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    title: Text(tasks[index]),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(onPressed: (){
                          editTask(index);
                        }, icon: Icon(Icons.edit)),
                        IconButton(onPressed: (){
                          deleteTask(index);
                        }, icon: Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
                }
            ),
          )
      ],
      ),
    );
  }
}
