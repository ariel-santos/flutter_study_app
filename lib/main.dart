import 'package:flutter/material.dart';

void main (){
    runApp(new MaterialApp(
        title: 'People Counter',
        home: Home()
    ));
}

class Home extends StatefulWidget {
    @override
    _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

    int _people = 0;
    void _changePeople( bool increment ) {
        setState(() {
            if (increment) {
                _people++;
            } else {
                _people--;
            }
        });
    }

    @override
    Widget build (BuildContext context) {
        return Stack(
            children: <Widget>[
                Image.asset(
                    "images/erick_jacquin_freezer.jpg",
                    fit: BoxFit.cover,
                    height: 1000,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                        Text(
                            "Pessoas: $_people", 
                            style: TextStyle(
                                color: Colors.white, 
                                fontWeight: FontWeight.bold
                            ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: FlatButton(
                                        child: Text(
                                            "+1",
                                            style: TextStyle(fontSize: 40, color: Colors.white),
                                        ),
                                        onPressed: () => {
                                            _changePeople(true)
                                        },
                                    ),
                                ),
                                Padding(
                                    padding: EdgeInsets.all(10),
                                    child: FlatButton(
                                        child: Text(
                                            "-1",
                                            style: TextStyle(fontSize: 40, color: Colors.white),
                                        ),
                                        onPressed: () => {
                                            _changePeople(false)
                                        },
                                    ),
                                )
                            ],
                        ),
                        Text(
                            "Pode entrar ", 
                            style: TextStyle(
                                color: Colors.white, 
                                fontStyle: FontStyle.italic, 
                                fontSize: 30.0
                            ),
                        ),
                    ],
                    
                ),
            ],
        );
    }
}