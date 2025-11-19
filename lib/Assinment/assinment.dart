import 'package:flutter/material.dart';
import 'package:flutter_13_new/Assinment/const_assinm.dart';
class Assinment extends StatelessWidget {
  final List _photo=[
    Data(image: 'asset/img_3.png', text: 'Full stack web development with javascript(MERN)',text1:'Batch ১১ ',text2: '৬ সিট বাকি',text3: '6 দিন বাকি' ),
    Data(image: 'asset/img_2.png', text: 'Full stack web development with Phython,Django & React',text1:'Batch ৬ ',text2: '৮৬ সিট বাকি',text3: '৪০ দিন বাকি'),
    Data(image: 'asset/img_4.png', text: 'Full stack web development with ASP.Net Core',text1:'Batch ৭',text2: '৭৫ সিট বাকি',text3: '৩৯ দিন বাকি'),
    Data(image: 'asset/img_5.png', text: 'SQA: Manual & Automated Testing',text1:'Batch ৩৯',text2: '৬৫ সিট বাকি',text3: '৪৯ দিন বাকি')
  ];


 Assinment({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Assinment'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
        body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.65,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: _photo.length,
          itemBuilder: (context,index){

              return Card(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                            child: Image.asset(_photo[index].image)),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [

                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,//button color
                                    foregroundColor: Colors.black,//button word color
                                ),
                                onPressed: (){},
                                child: Text(_photo[index].text1,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,//button color
                                    foregroundColor: Colors.black,//button word color

                                ),
                                onPressed: (){},
                                child: Text(_photo[index].text2,
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,//button color
                                    foregroundColor: Colors.black,//button word color

                                ),
                                onPressed: (){},
                                child: Text(_photo[index].text3,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(_photo[index].text, style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        SizedBox(
                          height:50 ,
                          width:double.infinity,//size infinity hoi
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,//button color
                                  foregroundColor: Colors.black,//button word color
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),//button shape
                                  )
                              ),
                              onPressed: (){},
                            child: Text('বিস্তারিত দেখুন',
                          ),
                        ),
                        )

                      ],
                    ),
                  ),
                );



          }
        ),
    );
  }
}
