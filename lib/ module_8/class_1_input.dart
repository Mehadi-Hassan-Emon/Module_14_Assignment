import 'package:flutter/material.dart';
class FlutterInput extends StatelessWidget {
  const FlutterInput({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneController =TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Input'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        //padding: // padding: const EdgeInsets.only(left: 10,right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Image.network('https://bcassetcdn.com/public/blog/wp-content/uploads/2023/01/23175242/Facebook-Logo-Meaning-1024x360.jpg'),
            Image.asset('asset/img_1.png'),
            SizedBox(height: 10,),
            TextField(

              controller: phoneController,
              keyboardType: TextInputType.phone,//keyboard phone number just
              maxLength: 11,
              cursorColor: Colors.orange,

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.call),
                suffixIcon: Icon(Icons.check),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.orange),
                ),
                filled: true,//all box colors
                contentPadding: EdgeInsets.all(20),
                //fillColor: Colors.grey.shade100,

                hintText: 'Enter Phone Number',
                hintStyle: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
                helperText: '0181xxxx',
                helperStyle: TextStyle(
                  color: Colors.redAccent
                ),
                labelText: 'Phone Number',
                labelStyle: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: 20,
                )
              ),
            ),



            SizedBox(height: 10,),
            TextField(
              controller: passwordController,
              obscureText: true,//pass and number diye submit dile hide hobe
              cursorColor: Colors.orange,

              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.orange),
                  ),

                  hintText: 'Password',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  labelText: 'Enter Password',
                  labelStyle: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                  )
              ),
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(onPressed: (){
                  print(
                    phoneController.text//phone number print
                  );
                  print(
                    passwordController.text
                  );
                  //phoneController.clear();
                  //passwordController.clear();

                  // if(passwordController.text.length<6){
                  //   print('Password must be minimum 6 charecter');
                  // }
                }, child: Text('Submit'))),

          ],
        ),
      ),
    );
  }
}
