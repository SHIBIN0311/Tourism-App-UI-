import 'package:flutter/material.dart';

class NextPage extends StatelessWidget {
  const NextPage({super.key, required this.pictures, required this.index});
  final List<String> pictures;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(pictures[index]),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
