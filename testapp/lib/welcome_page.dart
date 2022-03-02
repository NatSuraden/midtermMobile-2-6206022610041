import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  String name, email, password,cnfpassword,mobile,school,ge;

  double wh = 0, total = 0;
  WelcomePage(
    {Key? key,
    required this.name,
    required this.email,
    required this.password,
    required this.cnfpassword,
    required this.mobile,
    required this.school,
    required this.ge,
    })
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('หน้าสรุป'),
        backgroundColor: Colors.redAccent,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('username : '),
                    subtitle: Text(' $name'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('email : '),
                    subtitle: Text(' $email'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('password : '),
                    subtitle: Text(' $password'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('cnfpassword : '),
                    subtitle: Text(' $cnfpassword'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('mobile : '),
                    subtitle: Text(' $mobile'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('วฒิการศึกษา : '),
                    subtitle: Text(' $school'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('เกรดเฉลี่ย : '),
                    subtitle: Text(' $ge'),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}