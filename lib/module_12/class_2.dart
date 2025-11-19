import 'package:flutter/material.dart';
import 'package:flutter_13_new/module_12/example.dart';
class LifeCycle extends StatefulWidget {
   LifeCycle({super.key}){
    print('1 constructor');//check
  }

  @override
  State<LifeCycle> createState() {
     print('2 createstate');
     return _LifeCycleState();//check
  }
}

class _LifeCycleState extends State<LifeCycle> {
  String name = 'Demo';//variable
  Color bgColor = Colors.red;//variable
  
  @override
  void initState() {//update dekhai always
    // TODO: implement initState
    print('3 inisitstate');//check
    bgColor = Colors.green;
    name = "Mehadi";
    super.initState();
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    print('4 didchangedependencies');//intialstate load over hole eitate kichu data ashe
    bgColor = Colors.purple;
    name = "Emon";
    super.didChangeDependencies();
  }
  
  
  @override
  void deactivate() {
    // TODO: implement deactivate
    print('5 deactivate');
    super.deactivate();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    print('6 dispose');
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  // print('setstate');//refresh rebuild
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Example()));

                });
              },
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: bgColor,
                ),
                child: Center(
                  child: Text(
                    'hello this is $name',
                    style: TextStyle(
                    fontSize: 30
                  ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
