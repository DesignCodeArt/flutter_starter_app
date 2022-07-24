import 'package:flutter/material.dart';
import 'package:flutter_starter/app/app.dart';
import 'package:get_it/get_it.dart';

class PostsPage extends StatelessWidget {
  PostsPage({Key? key}) : super(key: key);

  final AppRouter _router = GetIt.I.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            _router.push(PostDetailRoute(postId: '123'));
          },
          child: const Text('Post #1'),
        ),
      ),
    );
  }
}
