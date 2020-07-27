import 'package:baqalat/Components/products.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

class BodyPart extends StatefulWidget {
  @override
  _BodyPartState createState() => _BodyPartState();
}

class _BodyPartState extends State<BodyPart> {
  Widget Categories(String imgVal, String text) {
    return Container(
      width:90.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              InkWell(
                onTap: ()=>print("Diary"),
                child: Card(
                  child: Image.asset(imgVal),
                ),
              ),
              Text(text, style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),),
            ],
          ),
        ],
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: <Widget>[

        Center(
          child: Container(
            height: MediaQuery.of(context).size.height/3.6,
            width: MediaQuery.of(context).size.width,
            child: Carousel(
              images: [
                AssetImage('assets/images/Carousel.png'),
                AssetImage('assets/images/Carousel.png'),
                AssetImage('assets/images/Carousel.png'),
              ],
              dotSize: 4,
              dotSpacing: 15.0,
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.black.withOpacity(0),
            ),
          ),
        ),

        Container(
          height: MediaQuery.of(context).size.height/21,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Categories',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'see all categories',
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal),
                ),
                IconButton(icon:Icon(Icons.keyboard_arrow_right)),
              ],
            ),
          ),
        ),


        Container(
          height: 110.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(7.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Categories('assets/images/Diary.png', 'Dairy'),
                Categories('assets/images/Diary.png', 'Dairy'),
                Categories('assets/images/Diary.png', 'Dairy'),
                Categories('assets/images/Diary.png', 'Dairy'),
                Categories('assets/images/Diary.png', 'Dairy'),
              ],
            ),
          ),
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[300],
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      'Daily Essentials',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height,
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Products(),
                ),
              )
            ],
          ),
        ),


      ],
    );
  }
}
