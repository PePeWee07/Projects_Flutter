import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';



class FullSreenPlayer extends StatefulWidget {

  final String videoUrl;
  final String caption;

  const FullSreenPlayer({super.key, required this.videoUrl, required this.caption});

  @override
  State<FullSreenPlayer> createState() => _FullSreenPlayerState();
}

class _FullSreenPlayerState extends State<FullSreenPlayer> {

  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();

    controller = VideoPlayerController.asset(widget.videoUrl)
      ..setVolume(0)
      ..setLooping(true)
      ..play();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: controller.initialize(), 
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          return AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: VideoPlayer(controller),
          );
        } else {
          return const Center(child: CircularProgressIndicator(strokeWidth: 2));
        }
      }
      );
  }
}