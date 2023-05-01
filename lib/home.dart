import 'package:flutter/material.dart';

class Home extends StatefulWidget
{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int teamAPoints = 0;

  int teamBPoints = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(
          "Point's Counter",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Team A", style: TextStyle(
                      fontSize: 35,
                    ),),
                    Text("$teamAPoints", style: TextStyle(
                      fontSize: 100,
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                      onPressed: ()
                      {
                        setState(() {
                          teamAPoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                      onPressed: ()
                      {
                        setState(() {
                          teamAPoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                      onPressed: ()
                      {
                        setState(() {
                          teamAPoints += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 500,
                child: VerticalDivider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: 50,
                  endIndent: 50,
                ),
              ),
              Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("Team B", style: TextStyle(
                      fontSize: 35,
                    ),),
                    Text("$teamBPoints", style: TextStyle(
                      fontSize: 100,
                    ),),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                      onPressed: ()
                      {
                        setState(() {
                          teamBPoints++;
                        });
                      },
                      child: Text(
                        "Add 1 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                      onPressed: ()
                      {
                        setState(() {
                          teamBPoints += 2;
                        });
                      },
                      child: Text(
                        "Add 2 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
                      onPressed: ()
                      {
                        setState(() {
                          teamBPoints += 3;
                        });
                      },
                      child: Text(
                        "Add 3 Point",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green, minimumSize: Size(150, 50)),
            onPressed: ()
            {
              setState(() {
                teamAPoints = 0;
                teamBPoints = 0;
              });
            },
            child: Text(
              "RESET",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}