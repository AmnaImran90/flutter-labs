import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner:
    false;
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text('Pets UI'),
            leading: IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.grid_view_outlined,
                  color: Colors.amber,
                ),),
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white,
            bottomOpacity: 0.0,
          ),
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20),
                      child: Text("Hi, Amna",
                          style: TextStyle(
                            fontFamily: 'San',
                            color: Colors.black,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 21),
                      child: Text('Good Morning',
                          style: TextStyle(
                            fontFamily: 'San',
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ],
                ),
                Image.asset('images/options.png'),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 21),
                      child: Text('Adopt Pet',
                          style: TextStyle(
                            fontSize: 35,
                            fontFamily: 'San',
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.left),
                    ),
                  ],
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset('images/Dog_1.png'),
                            ),
                            Expanded(
                              child: Image.asset('images/Dog_2.png'),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Image.asset('images/Dog_3.png'),
                            ),
                            Expanded(
                              child: Image.asset('images/Dog_4.png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ),);
  }
}

