import 'package:flutter/material.dart';
import 'package:vr_video_player/image_section.dart';
import 'package:vr_video_player/video_section.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('VR Flutter App'),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                color: Colors.redAccent,
                child: Text('360 Video Player'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => VideoSection()));
                }),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
                color: Colors.redAccent,
                child: Text('360 Image Viewer'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ImageSection()));
                })
          ],
        ),
      ),
    );
  }
}
