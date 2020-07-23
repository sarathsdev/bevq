import 'dart:async';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';



void main() {
  runApp(new MaterialApp(
    home:  SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Center(
        child: new Image.asset('assets/bevq.png'),
      ),
    );
  }
}



class HomeScreen extends StatefulWidget {


  @override
  _HomeScreenState createState() => new _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('assets/bevq.png'),
          Text(
            'WELCOME',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Sign in to continue',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.person_pin,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to  announce in accessibility modes',
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  " Name",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.call,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to  announce in accessibility modes',
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  " +91",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  " Phone No.",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 24.0,
                  semanticLabel: 'Text to  announce in accessibility modes',
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  " Pincode ",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 70.0,
              ),
              Icon(
                Icons.check_circle_outline,
                color: Colors.black,
                size: 24.0,
                semanticLabel: 'Text to  announce in accessibility modes',
              ),
              SizedBox(
                width: 10.0,
              ),
              Text(
                " Accept Terms and Conditions ",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),

            ],
          ),
          RaisedButton(
            color: Colors.red,
            child: Text('SUBMIT'),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MainScreen()),
              );

            },
          ),

          ],
          ),

    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          title: new Text('BevQ')),
      body: Center(
        child: Text(
          'Slots can only be booked from \n'
          '        6:00 AM to 1:00 PM ',
          style: TextStyle(
            color: Colors.black,
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),


      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('User'),
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
            ),
            ListTile(
              title: Text('New Booking '),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Terms & Conditions'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout '),
              onTap: ()  {

              },
            ),

          ],
        ),
      ),
    );
  }
}
