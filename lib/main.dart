import 'package:baqalat/Drawer_Files/drawer_content.dart';
import 'package:baqalat/body_part.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baqalat',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightGreen,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Baqalat'),
            ],
          ),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.notifications),onPressed: ()=>print("notifications"),),
            IconButton(icon: Icon(Icons.shopping_cart),onPressed: ()=>print("Cart"),),
          ],
          bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 15.0
                    ),
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search for Products, Brands & More',
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
          preferredSize: Size.fromHeight(50.0),),
        ),
        drawer: Drawer(
          child: DrawerContent(),
        ),
        body: BodyPart(),
      ),
    );
  }
}


