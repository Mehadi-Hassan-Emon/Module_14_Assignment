import 'dart:convert';

import 'package:flutter_13_new/module_13/CRUD/model/productModel.dart';
import 'package:flutter_13_new/module_13/CRUD/utils/urls.dart';
import 'package:http/http.dart' as http;



class ProductController{

  List<Data> products =[];         
  bool isLoading = true;          
  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));         
    bool isLoding = false;
    if(response.statusCode == 200){
       final data = jsonDecode(response.body);
       ProductModel model = ProductModel.fromJson(data);       
       products = model.data ?? [];
     }
  }
  
  //create   
  Future<bool>createProduct(Data data)async {
    final response = await http.post(Uri.parse(Urls.createProduct),
      headers: {
      'Content-Type':'application/json'    
      },
      body: jsonEncode(
        {
          "ProductName": data.productName,
          "ProductCode": DateTime.now().microsecondsSinceEpoch,
          "Img":data.img,
          "Qty":data.qty ,
          "UnitPrice":data.unitPrice ,
          "TotalPrice":data.totalPrice ,
        }
      ),
    );
    if(response.statusCode== 200){
      return true;
    }else{
      return false;
    }
  }


  //delete   //button delete
Future<bool>deleteProduct(String productId)async{
    final response = await http.get(Uri.parse(Urls.deleteProduct(productId)));

    if(response.statusCode ==200){
      return true;
    }else{
      return false;
    }
}
}
