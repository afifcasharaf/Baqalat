import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name":"Almarai Milk",
      "picture":"assets/images/Products/Almarai1.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Lusine Bread",
      "picture":"assets/images/Products/Almarai1.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Almarai Milk",
      "picture":"assets/images/Products/Almarai1.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Lusine Bread",
      "picture":"assets/images/Products/Almarai.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Almarai Milk",
      "picture":"assets/images/Products/Almarai.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Almarai Milk",
      "picture":"assets/images/Products/Almarai.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Almarai Milk",
      "picture":"assets/images/Products/Almarai.png",
      "old_price":8.00,
      "price":7.50,
    },
    {
      "name":"Almarai Milk",
      "picture":"assets/images/Products/Almarai.png",
      "old_price":8.00,
      "price":7.50,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        primary: true,
      childAspectRatio: (170/200),
        crossAxisCount: 2,
        children: List.generate(product_list.length, (index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_pic: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        }));
  }
}
class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pic;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pic,
    this.prod_old_price,
    this.prod_price,
});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: (){},
            child: SafeArea(
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: Column(
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(prod_name, style: TextStyle(fontSize:13,fontWeight: FontWeight.bold),),
                                Text("500gm", style: TextStyle(fontSize:13,fontWeight: FontWeight.bold),),
                                Text("Almarai",style: TextStyle(fontSize:11,fontWeight: FontWeight.w400 ),),
                                Text("SR $prod_price", style: TextStyle(fontSize:14,fontWeight: FontWeight.bold),),
                                Row(
                                  children: <Widget>[
                                    Text("SR $prod_price", style: TextStyle(fontSize:11,fontWeight: FontWeight.w400,decoration: TextDecoration.lineThrough),),
                                    SizedBox(width: 10,),
                                    Text("10% OFF",style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.green),)
                                  ],
                                ),
                              ],
                            ),
                          ),
                          IconButton(icon:Icon(Icons.favorite)),
                        ],
                      ),
                      InkWell(
                        onTap: ()=>print("add to cart"),
                        child: Container(
                          color: Colors.grey,
                          height: 30,
                          width:400,
                          child: Center(
                            child: Text(
                              "ADD TO CART",
                              style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(prod_pic,
                  alignment: Alignment.topCenter,
                  scale: 1.7,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

