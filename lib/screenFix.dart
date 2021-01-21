import 'package:flutter/material.dart';
import 'package:flutter_app/listingPage.dart';
import 'package:flutter_app/openCamera.dart';
import 'package:flutter_app/screen4.dart';
import 'package:flutter_app/screen5.dart';
import 'package:flutter_app/screen6.dart';
import 'package:flutter_app/screen7.dart';
import 'package:flutter_app/screen8.dart';
import 'package:flutter_app/screen9.dart';
import 'package:flutter_app/screenQuiz.dart';

class screenFix extends StatefulWidget {
  @override
  _screenFixState createState() => _screenFixState();
}

class _screenFixState extends State<screenFix> {

  var kelas10 = false;
  var kelas11 = false;
  var kelas12 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Smart English - SDGS 4'),
        backgroundColor: Colors.pink[400],
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      endDrawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                // child: Text('Drawer Header'),
                decoration: BoxDecoration(color: Colors.pink[400],), child: null,
              ),

              RaisedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> openCamera()));
                },
                child: Text("camera"),
              ),
              RaisedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> IndexPage()));
                },
                child: Text("listing http"),
              ),
            ],
          ),
      ),
      body: Container(
        child: ListView(
          children: [
            // card putih 1
            Column(
              children: [
                Container(
                  child: Card(
                    color: Colors.blueGrey[100],
                    elevation: 8,
                    margin: EdgeInsets.only(
                        bottom: 10, top: 20, left: 20, right: 20),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1, color: Colors.brown),
                          ),
                        ),
                        // child: CircleAvatar(
                        //   // child: Text('1'),
                        //   backgroundColor: Colors.blue,
                        // ),
                        child: Icon(
                          Icons.book,
                          color: Colors.pinkAccent,
                          size: 70,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      title: Text(
                        'Materi Kelas X SMA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[

                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    kelas10 = !kelas10;
                                  });
                                },
                                child: Text(
                                  'Lihat materi',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //card biru
                if (kelas10)
                  Container(
                    child: Column(
                      children: [
                        // card biru 1
                        Card(
                          color: Colors.blueGrey,
                          elevation: 8,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 10, left: 40, right: 40),
                          child: ListTile(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => screen4()),
                              )
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              'Tenses Present',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Expanded(child: Text('Kelas X SMA')),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Text('Sumber necerz.com'),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                        // card biru 2
                        Card(
                          color: Colors.blueGrey,
                          elevation: 8,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 10, left: 40, right: 40),
                          child: ListTile(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => screen5()),
                              )
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              'Tenses Past',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Expanded(child: Text('Kelas X SMA')),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Text('Sumber necerz.com'),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //?
              ], // **
            ),

            //card putih 2
            Column(
              children: [
                Container(
                  child: Card(
                    color: Colors.blueGrey[100],
                    elevation: 8,
                    margin: EdgeInsets.only(
                        bottom: 10, top: 20, left: 20, right: 20),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1, color: Colors.brown),
                          ),
                        ),
                        // child: CircleAvatar(
                        //   // child: Text('1'),
                        //   backgroundColor: Colors.blue,
                        // ),
                        child: Icon(
                          Icons.book,
                          color: Colors.pinkAccent,
                          size: 70,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      title: Text(
                        'Materi Kelas XI SMA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    kelas11 = !kelas11;
                                  });
                                },
                                child: Text(
                                  'Lihat materi',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //card biru
                if (kelas11)
                  Container(
                    child: Column(
                      children: [
                        //card biru 1
                        Card(
                          color: Colors.blueGrey,
                          elevation: 8,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 10, left: 40, right: 40),
                          child: ListTile(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => screen6()),
                              )
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              'Tenses Future',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Expanded(child: Text('Kelas XI SMA')),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Text('Sumber necerz.com'),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                        //card biru 2
                        Card(
                          color: Colors.blueGrey,
                          elevation: 8,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 10, left: 40, right: 40),
                          child: ListTile(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => screen7()),
                              )
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              'Passive Voice',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Expanded(child: Text('Kelas XI SMA')),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Text('Sumber necerz.com'),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //?
              ], // **
            ),

            //card putih 3
            Column(
              children: [
                Container(
                  child: Card(
                    color: Colors.blueGrey[100],
                    elevation: 8,
                    margin: EdgeInsets.only(
                        bottom: 10, top: 20, left: 20, right: 20),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1, color: Colors.brown),
                          ),
                        ),
                        // child: CircleAvatar(
                        //   // child: Text('1'),
                        //   backgroundColor: Colors.blue,
                        // ),
                        child: Icon(
                          Icons.book,
                          color: Colors.pinkAccent,
                          size: 70,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      title: Text(
                        'Materi Kelas XII SMA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () {
                                  setState(() {
                                    kelas12 = !kelas12;
                                  });
                                },
                                child: Text(
                                  'Lihat materi',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                //card biru
                if (kelas12)
                  Container(
                    child: Column(
                      children: [
                        //card biru 1
                        Card(
                          color: Colors.blueGrey,
                          elevation: 8,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 10, left: 40, right: 40),
                          child: ListTile(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => screen8()),
                              )
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              'Noun and Pronoun',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Expanded(child: Text('Kelas XII SMA')),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Text('Sumber necerz.com'),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                        //card biru 3
                        Card(
                          color: Colors.blueGrey,
                          elevation: 8,
                          margin: EdgeInsets.only(
                              bottom: 10, top: 10, left: 40, right: 40),
                          child: ListTile(
                            onTap: () => {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                    builder: (context) => screen9()),
                              )
                            },
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            title: Text(
                              'Adjective and Adverb',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Expanded(child: Text('Kelas XII SMA')),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.local_florist,
                                      color: Colors.pinkAccent,
                                    ),
                                    Text('Sumber necerz.com'),
                                  ],
                                ),
                              ],
                            ),
                            trailing: Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ), //?
              ], // **
            ),

//card putih 4
            Column(
              children: [
                Container(
                  child: Card(
                    color: Colors.blueGrey[100],
                    elevation: 8,
                    margin: EdgeInsets.only(
                        bottom: 10, top: 20, left: 20, right: 20),
                    child: ListTile(
                      leading: Container(
                        padding: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 1, color: Colors.brown),
                          ),
                        ),
                        child: Icon(
                          Icons.book,
                          color: Colors.pinkAccent,
                          size: 70,
                        ),
                      ),
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      title: Text(
                        'Quiz Umum SMA',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              FlatButton(
                                onPressed: () => {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) => screenQuiz()),
                                  )
                                },
                                child: Text(
                                  'Mulai Quiz',
                                  style: TextStyle(fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ], // **
            ),

            //kurung tutup dari segala awal kurung buka
          ],
        ),
      ),
      // drawer: Drawer(),

    );
  }
}
