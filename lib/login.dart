import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(

            body: Center(
                child: RegisterUser()
            )
        )
    );
  }
}

class RegisterUser extends StatefulWidget {

  RegisterUserState createState() => RegisterUserState();

}

class RegisterUserState extends State {

  // Boolean variable for CircularProgressIndicator.
  bool visible = false ;

  // Getting value from TextField widget.


  final mobile = TextEditingController();
  final location = TextEditingController();

  Future userLogin() async{

    // Showing CircularProgressIndicator.
    setState(() {
      visible = true ;
    });

    // Getting value from Controller
    String mobile_ = mobile.text;
    String location_ = location.text;
    //String yoyo= base64Image;

    // SERVER API URL
    var url = 'https://flutter-examples.000webhostapp.com/register_user.php';

    // Store all data with Param Name.
    var data = {'mobile': mobile_, 'location': location_};

    // Starting Web API Call.
    var response = await http.post(Uri.parse(url), body: json.encode(data));

    // Getting Server response into variable.
    var message = jsonDecode(response.body);

    // If Web call Success than Hide the CircularProgressIndicator.
    if(response.statusCode == 200){
      setState(() {
        visible = false;
      });
    }

    // Showing Alert Dialog with Response JSON Message.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: new Text(message),
          actions: <Widget>[
            TextButton(
              child: new Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[

                    SizedBox(
                      height: MediaQuery.of(context).size.height*0.15,
                    ),
                    Container(
                      child: Text('STUDENT',style: TextStyle(color:Colors.orangeAccent,fontSize: 25,fontWeight: FontWeight.bold),),
                    ),

                    Container(margin: EdgeInsets.only(top: 20),
                        width: MediaQuery.of(context).size.width*0.5,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        padding: EdgeInsets.all(10.0),
                        child: CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage('https://cdn.pixabay.com/photo/2020/09/22/05/26/school-5591958_960_720.png'),
                        ),                  ),


                    Container(margin: EdgeInsets.only(top: 22),
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child:  TextFormField(
                          obscureText: false,
                          decoration: const InputDecoration(
                            labelText: 'Username',
                          ),
                        ),
                    ),
                    Container(
                        width: 280,
                        padding: EdgeInsets.all(10.0),
                        child:  TextFormField(
                          obscureText: true,
                          decoration: const InputDecoration(
                            labelText: 'Password',
                          ),
                        ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Visibility(
                        visible: visible,
                        child: Container(
                            margin: EdgeInsets.only(bottom: 30),
                            child: CircularProgressIndicator()
                        )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [Colors.deepOrangeAccent, Colors.orangeAccent],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextButton(
                        child: new Text('Sign In',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        onPressed: userLogin,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    InkWell(
                      onTap: () {  },
                      child: Text('Are you new user?  Sign Up here ',style: TextStyle(color: Colors.blue),),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width*0.8,
                      decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                          colors: [Colors.lightGreenAccent, Colors.greenAccent],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homeapp()),
                          );

                        },
                        child: new Text('Contact',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        // onPressed: ,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),




                  ],
                ),
              ))),
    );
  }

}