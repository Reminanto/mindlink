import 'package:flutter/material.dart';
import 'package:mindlink/widgets/post.dart';

class ImagePost extends StatelessWidget {
  const ImagePost({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostCard(
      title: "Image Post",
      content: "",
      postUrl: "https://media.sproutsocial.com/uploads/2017/01/Instagram-Post-Ideas.png",
      imageUrl: "https://media.sproutsocial.com/uploads/2017/01/Instagram-Post-Ideas.png", 
    );
  }
}
