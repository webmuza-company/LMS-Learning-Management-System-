import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'login.dart';


void main() => runApp(homeapp());

/// This is the main application widget.
class homeapp extends StatelessWidget {
  const homeapp({Key key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.deepOrangeAccent
          )),
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List<Widget> _widgetOptions = <Widget>[
    SingleChildScrollView(
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
                                child: Text('hello'),
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
    ),

    Container(
      child: Container(
        decoration: BoxDecoration(
          gradient: new LinearGradient(
            colors: [Colors.red.withOpacity(0.2),Colors.blueAccent.withOpacity(0.3),Colors.lightBlueAccent.withOpacity(0.5) ,Colors.greenAccent.withOpacity(0.5)],
            begin: FractionalOffset.centerLeft,
            end: FractionalOffset.centerRight,
          ),

        ),
        child: Column(
          children: [
            Container(

              decoration: BoxDecoration(

                image: DecorationImage(
                    image: NetworkImage(
                        'https://milkslip.in/app/assets/test.jpeg'
                    ),
                    fit: BoxFit.cover
                ),
              ),
              child: Container(
                width: double.infinity,
                height: 200,
                child: Container(
                  alignment: Alignment(0.0, 2.5),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://media.istockphoto.com/photos/facing-my-future-with-confidence-picture-id1139495117?k=6&m=1139495117&s=612x612&w=0&h=a2hxTvHq7XNN0zMh8m1CuyDPIaNYiswD7iZbh5rpac4="
                    ),
                    radius: 60.0,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Text(
              "Jenifer kelly"
              , style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Belgaum, India"
              , style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                child:Text('About Me: \n',style: TextStyle(fontWeight: FontWeight.bold,),)
            ),
            Container(
              height: 90,
              width: 366,
              child: Text(
                " I am the best student in my class, but my school doesn't offer class rank. What should I do?"
                , style: TextStyle(
                fontSize: 15.0,
                color: Colors.pink,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Card(
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
                elevation: 2.0,
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: 12, horizontal: 30),
                    child: Text("Skill Sets", style: TextStyle(
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300
                    ),))
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Intrested Subject || Chemistry"
              , style: TextStyle(
                fontSize: 18.0,
                color: Colors.black45,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w300
            ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text("Test Percentage",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600
                            ),),
                          SizedBox(
                            height: 7,
                          ),
                          Text("70%",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300
                            ),)
                        ],
                      ),
                    ),
                    Expanded(
                      child:
                      Column(
                        children: [
                          Text("Exam Marks",
                            style: TextStyle(
                                color: Colors.blueAccent,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w600
                            ),),
                          SizedBox(
                            height: 7,
                          ),
                          Text("85%",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 22.0,
                                fontWeight: FontWeight.w300
                            ),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(80.0),
                  ),
                  child: Ink(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.orangeAccent, Colors.redAccent]
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Container(
                      constraints: BoxConstraints(
                        maxWidth: 100.0, maxHeight: 40.0,),
                      alignment: Alignment.center,
                      child: Text(
                        "Contact me",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            letterSpacing: 2.0,
                            fontWeight: FontWeight.w300
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            )
          ],
        ),
      ),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
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

            ),
          ],
        ),
      ),
      appBar: AppBar(

        // Here we tke the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Student app'),
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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_rounded),
            label: 'Live Classes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.portrait_outlined),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}