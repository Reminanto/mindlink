import 'package:flutter/material.dart';
import 'package:mindlink/widgets/post.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoPost extends StatelessWidget {
  const VideoPost({super.key});

  @override
  Widget build(BuildContext context) {
  
    const String videoUrl = "https://youtu.be/z3o9mULwGAI?si=RarKDI47XrPkKZuD";
    final String videoId = YoutubePlayer.convertUrlToId(videoUrl) ?? '';

    return PostCard(
      title: "Video Post",
      content: "",
      postUrl: videoUrl,
      child: YoutubePlayer(
        controller: YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
          ),
        ),
      ),
    );
  }
}
