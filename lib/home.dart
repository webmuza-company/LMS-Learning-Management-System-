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
            backgroundColor: Colors.deepOrangeAccent
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
                  gradient: new LinearGradient(
                    colors: [Colors.red,Colors.deepOrange,Colors.deepOrangeAccent ,Colors.orange],
                    begin: FractionalOffset.centerLeft,
                    end: FractionalOffset.centerRight,
                  ),
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
              title: Text('Syllabus'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Rewards'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('FAQs'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('HELP & SUPPORT'),
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

        // Here we tke the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

            Container(margin: EdgeInsets.only(top: 8),
              child: Container(
                child: Row(
                  children: [
                    Container(margin: EdgeInsets.only(left: 7),
                      width: 410,
                      height: 250,

                      decoration: BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [Colors.red,Colors.deepOrange,Colors.deepOrangeAccent ,Colors.orange],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.deepOrange.withOpacity(0.5),
                              offset: Offset(0, 25),
                              blurRadius: 3,
                              spreadRadius: -10),
                        ],

                      ),
                      child: Row(
                        children: [
                          Container(margin: EdgeInsets.only(top: 8,left: 10,),
                            child: Container(
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 50.0,
                                backgroundImage: NetworkImage('https://media.istockphoto.com/photos/facing-my-future-with-confidence-picture-id1139495117?k=6&m=1139495117&s=612x612&w=0&h=a2hxTvHq7XNN0zMh8m1CuyDPIaNYiswD7iZbh5rpac4='),

                              ),
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(margin: EdgeInsets.only(left: 20,top: 90),
                                  child: Text('Jeniffer',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                                ),
                                Container(margin: EdgeInsets.only(top: 10),
                                  child: Text('Active',style: TextStyle(color: Colors.white,fontSize: 20)),
                                ),
                                Container(margin: EdgeInsets.only(top: 10),
                                  child: TextButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all<Color>(Colors.white24),
                                    ),
                                    onPressed: () {},
                                    child: const Text('Profile',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container (margin: EdgeInsets.only(left: 35),
                            child: Text('Level: 5',style: TextStyle(color: Colors.black54,fontSize: 25,fontWeight: FontWeight.bold),),
                          ),


                        ],
                      ),


                    )
                  ],
                ),
              ),

            ),
            Container(
              margin: EdgeInsets.only(top: 45),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20.0),
                    topLeft: Radius.circular(20.0)),
                image: DecorationImage(
                  image: NetworkImage('https://images.pexels.com/photos/6985193/pexels-photo-6985193.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: [
                  Container(
                    child: Row(
                      children: [
                        Container(margin: EdgeInsets.only(top: 25,left: 8),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(3),
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                  color: Colors.deepOrange.withOpacity(0.5)
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('LIVE-CLASS',textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,),),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(3),
                                height: 200,
                                width: 200,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: Colors.redAccent.withOpacity(0.5)
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text('ATTENDANCE',textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,),),
                                ),
                              ),


                            ],
                          ),
                        ),


                      ],
                    ),

                  ),

                  Container(
                    margin: EdgeInsets.only(left: 10,),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(3),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.green.withOpacity(0.5)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('RESULT',textAlign: TextAlign.center,
                              style: TextStyle(
                                color:Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,),),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(3),
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.purple.withOpacity(0.5)
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('HOMEWORK',textAlign: TextAlign.center,
                              style: TextStyle(
                                color:Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,),),
                          ),
                        ),


                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      )


      // This trailing comma makes auto-formatting nicer for build methods.
    );

  }
}
