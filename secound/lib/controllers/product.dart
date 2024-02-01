import 'package:secound/models/product.dart';

class ProductCont{
  List<Product> p=[];
  void addP(Product po){
    p.add(po);
  }
   List< Product > get(){
    return p;
  }

}