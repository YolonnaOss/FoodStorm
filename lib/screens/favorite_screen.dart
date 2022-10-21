import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      body: const Center(
        child: Icon(
          Icons.heart_broken,
          size: 100,
        ),
      ),
    );
  }
}
