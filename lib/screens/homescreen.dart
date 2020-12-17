import 'package:e_doctor_last/screens/booking.dart';
import 'package:e_doctor_last/screens/coronahomepage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class HomeScreen extends StatelessWidget {
  get iconSize => null;
  
  void customLaunch(command) async{
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('could not launch $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Covid 19 statistics',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
             child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => CoronaHomePage())),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        
                        
                      ),
                      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.assessment),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () {}),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Corona live statistics',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),
                    ),
                  )
            ),
            
            Container(
              child: Text(
                            'Emergency call numbers',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.help),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () {}),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'talk to a doctor',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.call),
                          iconSize: 30.0,
                          color: Colors.red,
                          onPressed: () {

                            customLaunch('tel: +0163257489');
                            
                            }),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin:
                  EdgeInsets.only(top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.redAccent.withOpacity(0.3),
                    spreadRadius: 0.5,
                    blurRadius: 1,
                    offset: Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.airport_shuttle),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () {}),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Call for and ambulance',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.call),
                          iconSize: 30.0,
                          color: Colors.redAccent,
                          onPressed: () {
                            customLaunch('tel: +01553257489');
                          }),
                      SizedBox(
                        height: 5.0,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
             child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => ApoinMent())),
                    child: Container(
                      margin: EdgeInsets.only(
                          top: 5.0, bottom: 5.0, right: 10.0, left: 10.0),
                      padding:
                          EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            spreadRadius: 0.5,
                            blurRadius: 1,
                            offset: Offset(0, 1), // changes position of shadow
                          ),
                        ],
                        
                        
                      ),
                      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      IconButton(
                          icon: Icon(Icons.assignment ),
                          iconSize: 30.0,
                          color: Colors.black,
                          onPressed: () {}),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'apointment',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5.0),
                        ],
                      ),
                    ],
                  ),
                  
                ],
              ),
                    ),
                  )
            )
          ],
        ),
      ),
    );
  }
}
