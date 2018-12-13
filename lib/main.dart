import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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

// uncomment the section of code below that you want to run

// initial setup

Widget myLayoutWidget() {
  return Text("Hello world!");
}

// padding

//Widget myLayoutWidget() {
//  return Padding(
//    padding: EdgeInsets.all(8.0),
//    child: Text("Hello world!"),
//  );
//}

// center

//Widget myLayoutWidget() {
//  return Center(
//    child: Text(
//      "Hello world!",
//      style: TextStyle(fontSize: 30),
//    ),
//  );
//}

// align

//Widget myLayoutWidget() {
//  return Align(
//    alignment: Alignment.topCenter,
//    child: Text(
//      "Hello",
//      style: TextStyle(fontSize: 30),
//    ),
//  );
//}

// container


//Widget myLayoutWidget() {
//  return Container(
//    margin: EdgeInsets.all(30.0),
//    padding: EdgeInsets.all(10.0),
//    alignment: Alignment.topCenter,
//    width: 200,
//    height: 100,
//    decoration: BoxDecoration(
//      color: Colors.green,
//      border: Border.all(),
//    ),
//    child: Text("Hello", style: TextStyle(fontSize: 30)),
//  );
//}

// rows

//Widget myLayoutWidget() {
//  return Row(
//    children: [
//      Icon(Icons.home),
//      Icon(Icons.home),
//      Icon(Icons.home),
//      Icon(Icons.home),
//    ],
//  );
//}

// columns

//Widget myLayoutWidget() {
//  return Column(
//    children: [
//      Icon(Icons.home),
//      Icon(Icons.home),
//      Icon(Icons.home),
//      Icon(Icons.home),
//    ],
//  );
//}

// expanded

//Widget myLayoutWidget() {
//  return Row(
//    children: [
//      Expanded(child: Icon(Icons.home)),
//      Expanded(child: Icon(Icons.home)),
//      Expanded(child: Icon(Icons.home)),
//      Expanded(child: Icon(Icons.home)),
//    ],
//  );
//}

// flex

//Widget myLayoutWidget() {
//  return Row(
//    children: [
//      Expanded(
//        flex: 7,
//        child: Container(
//          color: Colors.green,
//        ),
//      ),
//      Expanded(
//        flex: 3,
//        child: Container(
//          color: Colors.yellow,
//        ),
//      ),
//    ],
//  );
//}

// stacks


//Widget myLayoutWidget() {
//  return Stack(
//    children: [
//      Icon(Icons.home),
//      Icon(Icons.home),
//      Icon(Icons.home),
//      Icon(Icons.home),
//    ],
//  );
//}

//Widget myLayoutWidget() {
//  return Stack(
//
//    // any unpositioned children (our text) will be aligned at the bottom right
//    alignment: Alignment.bottomRight,
//
//    children: [
//
//      // first (bottom) child in the stack
//      Image.asset('images/sheep.jpg'), //            <--- image
//
//      // second child in the stack
//      Padding(
//        padding: EdgeInsets.all(16.0),
//        child: Text(
//          'Baaaaaa', //                              <--- text
//          style: TextStyle(fontSize: 30),
//        ),
//      ),
//
//    ],
//  );
//}

// complex layouts

//Widget myLayoutWidget() {
//  return Column(
//    children: [
//      Row(
//        children: [
//          Icon(Icons.favorite),
//          Text('BEAMS'),
//        ],
//      ),
//      Text('description...'),
//      Row(
//        children: [
//          Text('EXPLORE BEAMS'),
//          Icon(Icons.arrow_forward),
//        ],
//      ),
//    ],
//  );
//}

//Widget myLayoutWidget() {
//
//  // wrap everything in a purple container
//  return Container(
//    margin: EdgeInsets.all(16.0),
//    padding: EdgeInsets.all(16.0),
//    decoration: BoxDecoration(
//      color: Colors.purple[900],
//      border: Border.all(),
//      borderRadius: BorderRadius.all(Radius.circular(3.0)),
//    ),
//
//    // column of three rows
//    child: Column(
//
//      // this makes the column height hug its content
//      mainAxisSize: MainAxisSize.min,
//      children: [
//
//        // first row
//        Row(
//          children: [
//            Padding(
//              padding: EdgeInsets.only(right: 8.0),
//              child: Icon(Icons.favorite,
//                color: Colors.green,
//              ),
//            ),
//            Text(
//              'BEAMS',
//              style: TextStyle(
//                color: Colors.white,
//              ),
//            ),
//          ],
//        ),
//
//        // second row (single item)
//        Padding(
//          padding: EdgeInsets.symmetric(
//            vertical: 16.0,
//            horizontal: 0,
//          ),
//          child: Text('Send programmable push notifications to iOS and Android devices with delivery and open rate tracking built in.',
//            style: TextStyle(
//              color: Colors.white,
//            ),
//          ),
//        ),
//
//        // third row
//        Row(
//          children: [
//            Text('EXPLORE BEAMS',
//              style: TextStyle(
//                color: Colors.green,
//              ),
//            ),
//            Padding(
//              padding: EdgeInsets.only(left: 8.0),
//              child: Icon(Icons.arrow_forward,
//                color: Colors.green,
//              ),
//            ),
//          ],
//        ),
//
//      ],
//    ),
//  );
//}

// first row as a function

//Widget firstRow() {
//  return Row(
//    children: [
//      Padding(
//        padding: EdgeInsets.only(right: 8.0),
//        child: Icon(Icons.favorite,
//          color: Colors.green,
//        ),
//      ),
//      Text(
//        'BEAMS',
//        style: TextStyle(
//          color: Colors.white,
//        ),
//      ),
//    ],
//  );
//}

// first row as a custom widget

//class FirstRow extends StatelessWidget {
//  // the build method is required when creating a StatelessWidget
//  @override
//  Widget build(BuildContext context) {
//    return Row(
//      children: [
//        Padding(
//          padding: EdgeInsets.only(right: 8.0),
//          child: Icon(Icons.favorite,
//            color: Colors.green,
//          ),
//        ),
//        Text(
//          'BEAMS',
//          style: TextStyle(
//            color: Colors.white,
//          ),
//        ),
//      ],
//    );
//  }
//}