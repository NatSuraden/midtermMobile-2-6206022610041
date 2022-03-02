import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'welcome_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController username = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController cnfpassword = TextEditingController();
  TextEditingController mobile = TextEditingController();
  TextEditingController school = TextEditingController();
  TextEditingController ge = TextEditingController();

  @override
  void initState() {
    username.text = ""; 
    email.text = "";
    password.text = "";
    cnfpassword.text = "";
    mobile.text = "";
    school.text = "";
    ge.text = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar( 
             title: Text("REGISTER"),
             backgroundColor: Colors.redAccent,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                Image.asset(
                "assets/images/km.jpg",
                height: 180,
                ),
              SizedBox(height: 10), 

                TextField( 
                  controller: username,
                  decoration: InputDecoration( 
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: email,
                  decoration: InputDecoration( 
                      labelText: "Email Address",
                      prefixIcon: Icon(Icons.email),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: password,
                  decoration: InputDecoration( 
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: cnfpassword,
                  decoration: InputDecoration( 
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                TextField( 
                  controller: mobile,
                  decoration: InputDecoration( 
                      prefixIcon: Icon(Icons.phone),
                      labelText: "Mobile",
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                TextField( 
                  controller: school,
                  decoration: InputDecoration( 
                      prefixIcon: Icon(Icons.person),
                      labelText: "วุฒิการศึกษา",
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                TextField( 
                  controller: ge,
                  decoration: InputDecoration( 
                      prefixIcon: Icon(Icons.person),
                      labelText: "เกรดเฉลี่ย",
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),
                
                
                Container(
                padding: const EdgeInsets.all(10.30),
                child: TextButton(
                  child: Text(
                    "REGISTER",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: TextButton.styleFrom( 
                    primary: Colors.white,
                    backgroundColor: Colors.redAccent,
                  ),
                  onPressed: () {Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => WelcomePage(
                      name: username.text,
                      email: email.text,
                      password: password.text,
                      cnfpassword: cnfpassword.text,
                      mobile: mobile.text,
                      school: school.text,
                      ge: ge.text,
                    ),
                  ),
                );
              },
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Already have an Account ?",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              Container(
                alignment: Alignment.centerRight,
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              ],
            ),
          )
       );
  }

  OutlineInputBorder myinputborder(){ 
    return OutlineInputBorder( 
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.blueAccent,
          width: 3,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.redAccent,
          width: 3,
        )
    );
  }
}