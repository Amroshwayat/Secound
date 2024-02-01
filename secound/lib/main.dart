import 'package:flutter/material.dart';
import 'package:secound/controllers/product.dart';
import 'package:secound/models/product.dart';

void main() {
  runApp(  const HomePage() );
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Product p= new Product(Image: "assets/Images/358135581_828800545401076_8816984840935882489_n (1).png", price: 10);
  ProductCont p1=new ProductCont();
  late List<Product> p3;////
  @override
  void initState() {
    // TODO: implement initState
    p1.addP(p);
    p1.addP(p);
    p3=p1.get();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("Store Candles")), backgroundColor: Colors.pink,),
        body: ListView(
          children: [
            Card(
             
              child:Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),child: Column(children: [
                Image.asset(p3[0].Image,width: 200,height: 100 ,),
                
                
                
                Text("price : "+ p3[0].price.toString()),
                
              ],)) ,
            ),
            Card(
             
              child:Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),child: Column(children: [
                Image.asset(p3[0].Image,width: 200,height: 100 ,),
                
                
                
                Text("price : "+ p3[0].price.toString()),
                IconButton(onPressed: (){

                 
                    Navigator.push<void>(
    context,
    MaterialPageRoute<void>(
      builder: (BuildContext context) => const Card(),
    ),
  ); 
                }, icon: Icon(Icons.sailing))
                
              ],)) ,
            ),Card(
             
              child:Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),child: Column(children: [
                Image.asset(p3[0].Image,width: 200,height: 100 ,),
                
                
                
                Text("price : "+ p3[0].price.toString()),
                
              ],)) ,
            ),
             Card(
              child:Container(child: Column(children: [
                Image.asset(p3[0].Image),
                
                
                
                Text("price : "+ p3[0].price.toString()),
                
              ],)) ,
            ) ,Card(
              child:Container(child: Column(children: [
                Image.asset(p3[0].Image),
                
                
                
                Text("price : "+ p3[0].price.toString()),
                
              ],)) ,
            )

          ],
        ),

      ),
    );
  }
}

