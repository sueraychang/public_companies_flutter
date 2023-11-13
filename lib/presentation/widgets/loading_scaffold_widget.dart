import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoadingScaffoldWidget extends StatelessWidget {
  final String title;
  const LoadingScaffoldWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}
