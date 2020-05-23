import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project1/About/Pages/jyoti.dart';
import 'package:project1/About/Pages/kajal.dart';
import 'package:project1/About/Pages/muskan.dart';
import 'package:project1/About/Pages/wasim.dart';

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Developer'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Image(
                    image: AssetImage('images/Firebase.png'),
                    height: 100,
                  ),
                ),
                Expanded(
                  child: Image(
                    image: AssetImage('images/chat.png'),
                    height: 100,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        color: Colors.black,
        width: double.infinity,
        height: 200,
        child: Column(
          children: <Widget>[
            Text(
              'Developed By:',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.teal.shade100,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyAppKajal(),
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.black,
                        height: 150,
                        width: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage('images/kajal.jpeg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Kajal',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.teal.shade100,
                                letterSpacing: 2.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyAppJyoti(),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 100,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage('images/jyoti.jpeg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Jyoti',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.teal.shade100,
                                letterSpacing: 2.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyAppMuskan(),
                          ),
                        );
                      },
                      child: Container(
                        width: 100,
                        height: 150,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage('images/muskan.jpeg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Muskan',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.teal.shade100,
                                letterSpacing: 2.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyAppWasim(),
                          ),
                        );
                      },
                      child: Container(
                        height: 150,
                        width: 100,
                        color: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 30.0,
                              backgroundImage: AssetImage('images/wasim.jpg'),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Wasim',
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.teal.shade100,
                                letterSpacing: 2.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
