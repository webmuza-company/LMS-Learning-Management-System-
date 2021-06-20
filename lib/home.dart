import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(homeapp());
}

class homeapp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blending project',
      theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.orange,
          )),
      home: MyHomePage(title: 'Dashboard'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      drawer: Drawer(

        child: ListView(

          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Column(
                children: [
                  Container(height: 100,width: 100,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://media.istockphoto.com/photos/facing-my-future-with-confidence-picture-id1139495117?k=6&m=1139495117&s=612x612&w=0&h=a2hxTvHq7XNN0zMh8m1CuyDPIaNYiswD7iZbh5rpac4='),
                    ),
                  ),
                  Container(margin: EdgeInsets.all(5),
                    child: Text('Jennifer Margret',style: TextStyle(
                      color: Colors.white
                    ),),
                  )
                ],
              ),
            ),
            ListTile(
              title: Text('Courses'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Attendace'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Logout'),
              onTap: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(

        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body:Column(
        children: [
         Container(
           child: Row(
             children: [
               Card(

               )
             ],
           ),
         ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
