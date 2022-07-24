import 'package:flutter/material.dart';

class PostDetailPage extends StatelessWidget {
  const PostDetailPage({
    required this.postId,
    Key? key,
  }) : super(key: key);

  final String postId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post #$postId'),
      ),
      body: const Center(
        child: Text('Post detail here'),
      ),
    );
  }
}
