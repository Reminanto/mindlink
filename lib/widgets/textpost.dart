import 'package:flutter/material.dart';
import 'package:mindlink/widgets/post.dart';

class TextPost extends StatelessWidget {
  const TextPost({super.key});

  @override
  Widget build(BuildContext context) {
    return const PostCard(
      title: "Text Post",
      content: "This is a regular Facebook text-based post mockup with no image, as viewed from a Desktop site. Add your own text and create a realistic Facebook post mockup in no time.",
      postUrl: "https://mediamodifier.com/mockup/facebook-text-post-mockup-generator/4224t", 
      contentStyle: TextStyle(fontWeight: FontWeight.bold), 
    );
  }
}
