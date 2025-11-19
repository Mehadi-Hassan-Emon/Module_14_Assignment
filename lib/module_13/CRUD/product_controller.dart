import 'dart:convert';

import 'package:flutter_13_new/module_13/CRUD/model/productModel.dart';
import 'package:flutter_13_new/module_13/CRUD/utils/urls.dart';
import 'package:http/http.dart' as http;


//read mane data paoya
class ProductController{

  List<Data> products =[];          //productmodel.fromjson e je data ta pass korsi oitai list er modde rakhsi
  bool isLoading = true;           //app run hoyar ageh ekta load nibe
  Future fetchProducts() async {
    final response = await http.get(Uri.parse(Urls.readProduct));         //urls holo urls file er modde urls name r ekta class ache oitar url gula paoyar jonno
    bool isLoding = false;
    if(response.statusCode == 200){
       final data = jsonDecode(response.body);//jsondecode model class e dart covert,,and api call
       ProductModel model = ProductModel.fromJson(data);       //productmodel holo json to dart e convert kora file tar je class e ache oita & fromjson er modde data ta pass korche
       products = model.data ?? [];
     }
  }
  
  //create   //button edit,add
  Future<bool>createProduct(Data data)async {
    final response = await http.post(Uri.parse(Urls.createProduct),
      headers: {
      'Content-Type':'application/json'    //create er header theke add kore
      },
      body: jsonEncode(
        {//create postman theke
          "ProductName": data.productName,//productnam,qyt... eigula amra data je model make korsi oikhan theke paisi
          "ProductCode": DateTime.now().microsecondsSinceEpoch,
          "Img":data.img,
          "Qty":data.qty ,
          "UnitPrice":data.unitPrice ,
          "TotalPrice":data.totalPrice ,
        }
      ),//jsonEncode  server e data pathaite and api request e data body banaite and save
    );
    if(response.statusCode== 200){
      return true;
    }else{
      return false;
    }
  }


  //delete   //button delete
Future<bool>deleteProduct(String productId)async{
    final response = await http.get(Uri.parse(Urls.deleteProduct(productId)));//delete e ekta id ke dore delte kore tai productId niche and type strimng niche

    if(response.statusCode ==200){
      return true;
    }else{
      return false;
    }
}
}