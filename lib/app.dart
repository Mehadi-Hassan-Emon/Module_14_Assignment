import 'package:flutter/material.dart';
import 'package:flutter_13_new/%20module_8/class_1_input.dart';
import 'package:flutter_13_new/%20module_8/class_2.dart';
import 'package:flutter_13_new/%20module_8/class_3.dart';
import 'package:flutter_13_new/%20module_8/dashBoard.dart';
import 'package:flutter_13_new/%20module_8/grid_v.dart';
import 'package:flutter_13_new/%20module_8/theme_test.dart';
import 'package:flutter_13_new/module_11/class3.dart';
import 'package:flutter_13_new/module_11/class_2.dart';
import 'package:flutter_13_new/module_11/todo.dart';
import 'package:flutter_13_new/module_12/Calculator.dart';
import 'package:flutter_13_new/module_12/class_1.dart';
import 'package:flutter_13_new/module_12/class_2.dart';
import 'package:flutter_13_new/module_13/CRUD/crud.dart';
import 'package:flutter_13_new/module_13/class_2.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_13_new/Assinment/assinment.dart';
import 'package:flutter_13_new/home.dart';
import 'package:flutter_13_new/module_11/res.dart';
import 'package:flutter_13_new/module_7/class_2_button.dart';
import 'package:flutter_13_new/module_9/class_2.dart';
import 'package:flutter_13_new/module_9/class_2_stack.dart';
import 'package:flutter_13_new/module_9/classs_3.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(//pub.dev (flutter screenutil)
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            //theme
            theme: ThemeData( //themedata can handle all page
              // brightness: Brightness.dark,
              // primaryColor: Colors.deepPurple,
              // primarySwatch: Colors.amber,
              //scaffoldBackgroundColor: Colors.amberAccent,//all page color


              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )
              ),
              inputDecorationTheme: InputDecorationTheme( //border
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder( //border side
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide()
                ),
                focusedBorder: OutlineInputBorder( //border side color
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.orange, width: 2),
                ),
                hintStyle: TextStyle( //under box color
                  color: Colors.grey,
                ),
              ),
              textTheme: TextTheme(
                  headlineLarge: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )

              ),


            ),
            darkTheme: ThemeData
                .dark()
                .copyWith( //oporeo add kora jabe ekhaneo jabe just bujar jonno dekha
              primaryColor: Colors.deepPurple,
              elevatedButtonTheme: ElevatedButtonThemeData(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      )
                  )
              ),
            ),
            themeMode: ThemeMode.light,
            title: 'Batch-13',
            //home:Home();
            //home: Buttongrp(),
            //home: FlutterInput(),

            //home: LoginPage(),
            //home: Gridview(),
            //home: GridV(),
            home: ThemeTest(),

            //new class
            //initialRoute: 'login',
            initialRoute: 'crud',
            routes: {
              'home': (context) => Home(),
              'button': (context) => Buttongrp(),
              'login': (context) => LoginPage(),
              'Dashboard': (context) => Dashboard(),
              //dashbosard page multiple data pass
              'listview': (context) => FList(),
              'stack': (context) => Class2Stack(),
              'widget': (context) => OwnWidget(),
              // 'assinment':(context)=>Assinment(),
              // 'login':(context)=>LoginPage(),
              'res': (context) => Res(),
              'res_posnsive': (context) => ResPkg(),
              'class3': (context) => Class3(),
              'todo': (context) => Todo(),
              'stateclass': (context) => StateClass(),
              'lifecycle': (context) => LifeCycle(),
              'calculator': (context) => Calculator(),
              'apicall': (context) => APICall(),
              'crud': (context) => Crud(),








            },

          );
        }
    );
  }
}
