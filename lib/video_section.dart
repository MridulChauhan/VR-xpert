import 'package:flutter/material.dart';
import 'package:video_player_360/video_player_360.dart';

class VideoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('VR Video Player'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            await VideoPlayer360.playVideoURL(
                "https://github.com/stephangopaul/video_samples/blob/master/gb.mp4?raw=true");
          },
          child: Text("Click to play Video URL"),
        ),
      ),
    );
  }
}
