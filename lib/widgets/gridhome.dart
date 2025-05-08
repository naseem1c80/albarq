
import 'package:flutter/material.dart';

class GridHome extends StatefulWidget {
  @override
  _GridHomeState createState() => _GridHomeState();
}

class _GridHomeState extends State<GridHome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      //backgroundColor: Colors.blue[100],
        body: Container(

          child: Padding(
            padding: const EdgeInsets.only(top: 2.0,left: 10),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                      color: Colors.pink.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Text("pink", style: TextStyle(fontSize: 24.0,
                      fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.green.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text("green", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.purple.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text("purple", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.yellow.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text("yellow", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text("brown", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.grey.withOpacity(0.2)
                    ),
                    child: Center(
                      child: Text("grey", style: TextStyle(fontSize: 24.0,
                          fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
        );  }
}