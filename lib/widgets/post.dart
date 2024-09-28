import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class PostCard extends StatelessWidget {
  final String title;
  final String content;
  final String postUrl;
  final String? imageUrl; 
  final TextStyle? contentStyle;
   final Widget? child;

  const PostCard({
    super.key,
    required this.title,
    required this.content,
    required this.postUrl,
    this.imageUrl,
    this.contentStyle,
     this.child,
  });

  void _sharePost(BuildContext context) {
    Share.share('Check out this post: $postUrl');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
    body:    Center(
      child: Card(
          margin: const EdgeInsets.all(16.0),
          elevation: 4.0,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                Text(
                  content,
                  style: contentStyle ?? const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),
                if (imageUrl != null)
                  Image.network(
                    imageUrl!,
                    fit: BoxFit.cover,
                    height: 200.0, 
                    width: double.infinity, 
                  ),
                const SizedBox(height: 20),
                if (child != null) child!,
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () => _sharePost(context),
                  icon: const Icon(Icons.share),
                  label: const Text('Share'),
                ),
              ],
            ),
          ),
        ),
    ),
    );
  }
}
