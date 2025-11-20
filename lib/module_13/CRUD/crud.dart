
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_13_new/module_13/CRUD/model/productModel.dart';
import 'package:flutter_13_new/module_13/CRUD/product_controller.dart';
import 'package:http/http.dart' as http;

class Crud extends StatefulWidget {
  const Crud({super.key});

  @override
  State<Crud> createState() => _APICallState();
}

class _APICallState extends State<Crud> {
  ProductController controller =ProductController();


  @override
  void initState(){
    super.initState();
    fetchData();
  }

  Future fetchData() async {
    controller.isLoading = true;
    setState(() {}); 

    await controller.fetchProducts(); 

    controller.isLoading = false;
    if (mounted) setState(() {}); 
  }

 
  productDialog(){
    TextEditingController productNameController=TextEditingController();
    TextEditingController productIMGController=TextEditingController();
    TextEditingController productQTYController=TextEditingController();
    TextEditingController productUnitPriceController=TextEditingController();
    TextEditingController productTotalPriceController=TextEditingController();


    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text('Add Product'),
      content:SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller:productNameController ,
              decoration: InputDecoration(
                labelText: 'Name'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller:productIMGController,
              decoration: InputDecoration(
                  labelText: 'IMG'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller:productQTYController ,
              decoration: InputDecoration(
                  labelText: 'QYT'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller:productUnitPriceController ,
              decoration: InputDecoration(
                  labelText: 'UnitPrice'
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller:productTotalPriceController ,
              decoration: InputDecoration(
                  labelText: 'TotalPrice'
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text('Cancel')),
                ElevatedButton(onPressed: () async {
                  controller.createProduct(Data(
                    productName: productNameController.text,
                    img: productIMGController.text,
                    qty:int.parse(productQTYController.text) ,
                    unitPrice: int.parse(productUnitPriceController.text),
                    totalPrice:int.parse (productTotalPriceController.text),
                  ));
                  await fetchData();
                  Navigator.pop(context);
                }, child: Text('Save',style: TextStyle(color: Colors.white),))
              ],
            )
          ],
        ),
      ) ,
    ));
  }
///
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Product from API'),
        centerTitle: true,
      ),
      body: controller.isLoading
        ?Center(child: CircularProgressIndicator()) : GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              childAspectRatio: 0.8
          ),
          itemCount: controller.products.length,
          itemBuilder: (context,index){
            final item = controller.products[index];
            return Card(
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 140,
                      child: Image.network(item.img.toString()),
                    ),
                    Text(item.productName.toString(),
                      style: TextStyle(
                        fontSize: 19,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text('Price: \$${item.unitPrice} | QTY:${item.qty}'),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: (){
                              productDialog();
                            },
                            icon: Icon(
                              Icons.edit,color: Colors.orange,
                            )
                        ),
                        IconButton(
                            onPressed: () async{
                            await  controller.deleteProduct(item.sId.toString()).then((Value) async {   
                              if(Value){
                                await fetchData();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Product Delete'))
                                );
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Something Went Wrong'))
                                );
                              }
                            });
                            },
                            icon: Icon(
                              Icons.delete,color: Colors.red,
                            )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
        productDialog();
      },
      child: Icon(Icons.add),
      ),
    );
  }
}








