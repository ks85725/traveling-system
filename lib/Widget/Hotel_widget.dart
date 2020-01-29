import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test1/Models/Hotel.dart';
import 'package:test1/Models/destination_modal.dart';
class Hotel_widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                  Text("Exculsive Hotles",
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),),
                  Text("See All",
                  style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                    
                  ),),

              ],),
                ),
              Container(
                  height: 280.0,         
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: hotels.length,
                    itemBuilder: (BuildContext context,int index) {
                      Hotel hotel= hotels[index];
                      return Container(
                        margin: EdgeInsets.all(10.0),
                        width: 210.0,
                       
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: <Widget>[
                            Positioned(
                              left: 18.0,
                              bottom: 15.0,
                                                          child: Container(
                                height: 120,
                                width: 200,
                                decoration:BoxDecoration(
                                  borderRadius: BorderRadius.circular(15.0)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    
                                    children: <Widget>[
                                      
                                      Text(hotel.name,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 22.0,
                                        letterSpacing: 1.2,
                                      ),),
                                      Text('price : ${hotel.price}',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),)
                                    ],
                                  ),
                                ),
                            ),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),
                                boxShadow: [BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                )],),
                                
                                    child:ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Image(
                                      height: 180,
                                      width: 180,
                                      image:AssetImage(hotel.imageUrl),
                                      fit: BoxFit.cover,
                                    ),
                                    ),
                              ),
                          ],
                        ),
                      );

                    },
                  )
              ),
              ],
            );
  }
}