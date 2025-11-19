
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class APICall extends StatefulWidget {
  const APICall({super.key});

  @override
  State<APICall> createState() => _APICallState();
}

class _APICallState extends State<APICall> {
  List products = [];
  bool isLoading = true;//app run hoyar ageh ekta load nibe

  @override//initstate call bcz app er login ba kono kaj er ageh inissate er maddome updated data pai eta use nah kore run dile data show korbe nah
  void initState(){
    super.initState();
    getchProducts();
  }

  Future<void> getchProducts() async {//future e api call tai Future use hoise
    final url = Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response = await http.get(url);//Api call

    print(response.statusCode);
    print(response.body);

    if(response.statusCode ==200){ //jodi statecode 200 hoi tahole success
      final jsonResponse = jsonDecode(response.body);//json er code ta jsondecode korsi body te

      setState(() {
        products = jsonResponse['data'];//data mane holo product gula postman e data name er list er bitore ache tai
        isLoading = false;
      });
    }else{
      setState(() {
        isLoading = false;
      });
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Product from API'),
        centerTitle: true,
      ),
      body: isLoading ?Center(child: CircularProgressIndicator()) : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 1
          ),
          itemCount: products.length,
          itemBuilder: (context,index){
            final item = products[index];//products index eita text and img e bar bar likhte hoitase tai eta ekhane declear korsi item er bitore and oikhane just item likhle hobe
            return Card(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: Image.network(item['Img'].toString()),
                    ),
                    Text(item['ProductName'],
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('Price: \$${item['UnitPrice']} | QTY:${item['Qty']}')
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}








