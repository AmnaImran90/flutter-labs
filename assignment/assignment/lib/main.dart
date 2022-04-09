import 'package:flutter/material.dart';
import 'second.dart';
import 'dart:js';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: pets(),
  ));
}

class pets extends StatefulWidget {
  const pets({Key? key}) : super(key: key);

  @override
  State<pets> createState() => _petsState();
}

class _petsState extends State<pets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Get pets',
                  style: TextStyle(
                      fontFamily: 'San',
                      color: Colors.white,
                      fontSize: 58,
                      fontWeight: FontWeight.bold)),
              Expanded(
                child: Image.asset('images/main_dog.png'),
              ),
              Text(
                'Find your Favorite Pets close to you',
                style: TextStyle(
                    fontFamily: 'San',
                    color: Colors.white,
                    fontSize: 48,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              Text(
                'Join and discover your favorite pet in your locality',
                style: TextStyle(
                    fontFamily: "San",
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20.0,
              ),
              SizedBox(
                width: 300,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => second()));
                  },
                  child: Text(
                    'GET STARTED',
                    style: TextStyle(fontSize: 28, color: Colors.yellow[900]),
                    textAlign: TextAlign.center,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    elevation: 10,
                    padding: EdgeInsets.all(15),
                    side: BorderSide(
                      width: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
