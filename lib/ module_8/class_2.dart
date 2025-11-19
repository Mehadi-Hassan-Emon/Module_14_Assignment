//textform field ta mainly error red message check
import 'package:flutter/material.dart';
import 'package:flutter_13_new/%20module_8/dashBoard.dart';
import 'package:flutter_13_new/%20module_8/home_2.dart';
import 'package:flutter_13_new/home.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey <FormState>();
    TextEditingController PhoneController = TextEditingController();// user input
    TextEditingController passwordController = TextEditingController();// user input
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('asset/img_1.png',
              height: 250,
              width: 250,
            ),
            Text('Login with phone and password'),
            SizedBox(height: 20,),
            Form( //Textform field sob foem diye wrap korte hobe
              key: _formKey,

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('phone Number'),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: PhoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'phone Number',
                          border: OutlineInputBorder(
                          )
                      ),
                      //textform filed difference eitai
                      validator:(value){
                        if(value == null || value.isEmpty ){
                          return('Please enter phone Number');
                        }else if(value.length!= 11){
                          return'Enter correct Number';
                        }else{
                          return null;
                        }
                      },

                    ),
                    SizedBox(height: 20,),
                    TextFormField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                          )
                      ),
                      validator:(value){
                        if(value == null || value.isEmpty ){
                          return('Please enter password');
                        }else if(value.length<= 6){
                          return'Password must be at least 6 charecters';
                        }else{
                          return null;
                        }
                      },
                    ),
                    SizedBox(height: 20,),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(onPressed: (){
                          if(_formKey.currentState!.validate()){
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //     SnackBar(content: Text('Login Successful'),)
                            //);
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                          }
                        },
                            child: Text('Submit'))),

                    ///////new //navigator name// navigator name diye app,dart theke button name dore text dile next page e jabe
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, 'button');
                    }, child: Text('button')),

                    ElevatedButton(onPressed: (){// page theke back ashbe nah
                      Navigator.pushReplacementNamed(context, 'home');
                    }, child: Text('home')),

                    //new//Dashboard e data pass
                    ElevatedButton(onPressed: (){
                      Navigator.pushNamed(context, 'Dashboard',arguments: {
                        'phone':PhoneController.text,
                        'name':'Mehadi',
                      });
                    }, child: Text('Dashboard')),
                    //


                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Home2()));


                    }, child: Text('Home-2')
                    ),

                    //data pass
                    // ElevatedButton(onPressed: (){
                    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Dashboard(phone: PhoneController.text)));//number ta deyai dashboard e eita show kortase amra user theke input nibo tai upore Textediting controller use hoise
                    // }, child: Text('DashBoard'))

                    //new


                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
// Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
// }// next page er back button ashbe nah
