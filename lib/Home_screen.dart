import 'package:flutter/material.dart';
import 'package:test1/Widget/Hotel_widget.dart';
import 'package:test1/Widget/destination.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

      int selectstate=0;
  List<IconData> _icons = [
    Icons.add_photo_alternate,
    Icons.add_shopping_cart,
    Icons.add_to_photos,
    Icons.airline_seat_flat,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectstate=index;
        });
      },
      
          child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: selectstate==index?Colors.blueAccent:Theme.of(context).accentColor,
            borderRadius: BorderRadius.circular(30.0)),
        child: Icon(
          _icons[index],
          size: 25.0,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("travel system"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            Text("kuldeep"),
          ],
        ),
      ),
      body: new SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text(
                "Traveling Booking System",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20.0,width: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _icons.asMap().entries.map((MapEntry map)=>_buildIcon(map.key)).toList(),
            ),
            Destinations(),
            Hotel_widget(),
          ],
        ),
      ),
    );
  }
}
