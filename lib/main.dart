import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';

void main() {
  //debugPaintSizeEnabled = true;
  runApp(MyApp());
}

// the root widget of our application
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Building layouts"),
        ),
        body: myLayoutWidget(),
      ),
    );
  }
}

// replace this method with code in the examples below
Widget myLayoutWidget() {
  // wrap everything in a purple container
  return Container(
    margin: const EdgeInsets.all(16.0),
    padding: const EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.purple[900],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),

    // column of three rows
    child: Column(
      // this makes the column height hug its content
      mainAxisSize: MainAxisSize.min,
      children: [

        // first row
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.favorite,
                color: Colors.green,
              ),
            ),
            Text(
              'BEAMS',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),

        // second row (single item)
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 0,
          ),
          child: Text(
            'Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),

        // third row
        Row(
          children: [
            Text(
              'EXPLORE BEAMS',
              style: TextStyle(
                color: Colors.green,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_forward,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
