import 'package:flutter/material.dart';

class ThemeTest extends StatelessWidget {
  const ThemeTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Test'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Test Text',
            style: Theme.of(context).textTheme.headlineLarge,//multiple size ache(try it)
          ),
          SizedBox(height: 10,),
          TextField(),
          SizedBox(height: 10,),
          TextField(),
          ElevatedButton(onPressed: (){}, child: Text('Test Button'))//button colors change hobe app.dart er theme theke
        ],
      ),
    );
  }
}
