import 'dart:ffi';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Team training',
          // textAlign: TextAlign.center,
        ),
        centerTitle: true,
        actions: [
          TextButton(
              onPressed: () => {},
              child: Text('Next', style: TextStyle(color: Colors.white)))
        ],
        backgroundColor: Colors.pink[200],
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.pink[200],
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            Image.network(
              'https://cdn10.phillymag.com/wp-content/uploads/sites/3/2020/05/Philadelphia-virtual-experiences-fb.jpg',
            ),
            Container(
              height: 20.0,
            ),
            // SizedBox(height: 20),
            Text(
              'Philadelphia Convention Center',
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(height: 2.0),
            Text(
              'March 14th',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Container(
              height: 40.0,
            ),
            Text(
              'Schedule',
              style: TextStyle(color: Colors.white),
            ),
            Expanded(
                child: ListView(
              children: [
                scheduleTile('08:30', 'Welcome'),
                scheduleTile('08:50', 'Hello world'),
                scheduleTile('09:30', 'Etat danger'),
                scheduleTile('10:00', 'Hi all'),
                scheduleTile('11:30', 'Ready for dinner?'),
                scheduleTile('12:30', 'Enjoy your meal'),
                scheduleTile('13:30', 'Have a good nap'),
                scheduleTile('14:30', 'Rady to continue?'),
                scheduleTile('15:30', 'Thank all for honoring us'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
                scheduleTile('18:30', 'Goodbye everybody. See you soon'),
              ],
            )),
            Container(
              height: 70.0,
              // padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.schedule,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.baby_changing_station,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.label_off,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.landscape,
                    color: Colors.white,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget scheduleTile(String time, String eventTitle) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
              Text(
                eventTitle,
                style:
                    TextStyle(color: Colors.white, fontStyle: FontStyle.italic),
              ),
            ],
          ),
          Container(
            height: 10.0,
          ),
          Divider(
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
