import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

const BrandMain = Color(0xff1c2444);
const BrandAccent = Color(0xffec2551);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: BrandMain,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.fromLTRB(40.0, 0, 40.0, 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('images/me.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Misael Taveras',
                        style: TextStyle(
                            fontFamily: 'Overlock',
                            fontSize: 32,
                            color: BrandAccent,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Frontend Engineer',
                        style: TextStyle(
                          fontFamily: 'Covered',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                        width: 150,
                        child: Divider(color: BrandAccent),
                      ),
                      Text(
                        'Learning flutter',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      )
                    ],
                  ),
                ),
                Card(
                    color: Colors.white10,
                    margin: EdgeInsets.only(bottom: 20.0),
                    child: ListTile(
                      leading: Icon(Icons.public, color: BrandAccent),
                      title: Text(
                        'https://taverasmisael.com',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                    )),
                Card(
                  color: Colors.white10,
                  margin: EdgeInsets.only(bottom: 20.0),
                  child: ListTile(
                    leading: Icon(Icons.mail, color: BrandAccent),
                    title: Text(
                      'hello@taverasmisael.com',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
