import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double height = 100;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: height,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.black,width: 2)
                  ),


                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(30),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        // ignore: unnecessary_statements
                        height> 100? height=height-4 : height;
                      });
                    },
                    child: Icon(Icons.remove),
                  ),

                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() {
                        // ignore: unnecessary_statements
                        height < 300? height = height+4 : height;
                      });
                    },
                    child: Icon(Icons.add),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
