import 'package:flutter/material.dart';

class DrawerContent extends StatefulWidget {
  @override
  _DrawerContentState createState() => _DrawerContentState();
}

class _DrawerContentState extends State<DrawerContent> {
  Widget tiles(String name, IconData icon, Function function) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        FlatButton.icon(onPressed:function,
            icon: Icon(icon, color: Colors.grey[700]),
            label: Text(name,style: TextStyle(color: Colors.grey[700]),)),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 75.0,
          alignment: Alignment.centerLeft,
          color: Colors.lightGreen,
          child: FlatButton.icon(
            color: Colors.lightGreen,
              onPressed:()=>Navigator.pop(context),
              icon: Icon(
                Icons.home,
                color: Colors.white,),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              label: Text(
                  "Home",
                style: TextStyle(color: Colors.white),
              )),
        ),

        Container(
          height: 50,
          alignment: Alignment.centerLeft,
          color: Colors.black54,
          child: FlatButton.icon(
              onPressed: null,
              icon: Icon(
                Icons.near_me,
                color: Colors.white,
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              label: Text(
                "Deliver Address..",
                style: TextStyle(color: Colors.white),
              )),
        ),

        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 30.0,
                width: 125.0,
                color: Colors.black54,
                child: Center(
                  child: FlatButton(
                    onPressed: ()=>print("English"),
                    child:Text(
                      'English',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  )
                ),
              ),

              Container(
                height: 30.0,
                width: 125.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                  child: FlatButton(
                    onPressed: ()=>print("Arabic"),
                    child:Text(
                      'Arabic',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black87,
                      ),
                    ),
                  )
                ),
              ),

            ],
          ),
        ),

        tiles('My Profile', Icons.person, () => print("TV &")),
        tiles('Categories', Icons.widgets, () => print("TV &")),
        tiles('My Addresses', Icons.location_on, () => print("TV &")),
        tiles('Wishlist', Icons.favorite, () => print("TV &")),
        tiles('My Orders', Icons.event_note, () => print("TV &")),
        Divider(),
        tiles('Contact us', Icons.phone, () => print("TV &")),
        tiles('About us', Icons.help, () => print("TV &")),

      ],
    );
  }
}
