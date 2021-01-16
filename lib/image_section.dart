import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

class ImageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('VR Image Viewer'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => PanoramaView())),
          child: Text("Click to view Image panorama"),
        ),
      ),
    );
  }
}

class PanoramaView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Panorama(
          child: Image.asset('assets/panorama.jpg'),
        ),
      ),
    );
  }
}
