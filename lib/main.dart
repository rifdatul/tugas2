import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KEMERDEKAAN INDONESIA',
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
        primarySwatch: Colors.blueGrey,
      ),
      home: Home(),
    );
  }
}

class Kendaraan extends StatefulWidget {
 @override 
 _KendaraanState createState() => _KendaraanState();
}

class _KendaraanState extends State<Kendaraan> {
  @override 
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int like = 2;
  int dislike = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kemerdekaan"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Image.asset('assets/pejuang.jpg')
                  ),
              ],
            ),
            Center(
              child: Text('Makna Kemerdekaan Indonesia', 
              style: TextStyle(
                color: Colors.red,
                fontSize: 32.0,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blueGrey, 
                    Colors.red,
                    Colors.deepPurple
                  ]
                ),
              ),
              child: Text(
                  'Bangsa yang besar adalah bangsa yang menghargai jasa pahlawannya \r\n - Ir. Soekarno',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                  ),
                  textAlign: TextAlign.justify,
                ),
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(Icons.thumb_up, size: 100.0, color: Colors.green[600],),
                      onPressed: () {
                        setState(() {
                          like++;
                        });
                      },
                    ),
                    Text(like.toString(), style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    FlatButton(
                      child: Icon(Icons.thumb_down, size: 100.0, color: Colors.red[600],),
                      onPressed: () {
                        setState(() {
                          dislike++;
                        });
                      },
                    ),
                    Text(dislike.toString(), style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.share, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.comment, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.person, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      width: 50.0,
                      height: 50.0,
                      child: Icon(Icons.favorite, size: 32.0, color: Colors.grey[600],),
                    ),
                    Text('20', style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),)
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}