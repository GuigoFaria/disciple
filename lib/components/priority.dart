import 'package:flutter/material.dart';

class Priority extends StatelessWidget {
  final int priority;
  const Priority(
    this.priority, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Icon(Icons.star,
              size: 15, color: this.priority >= 1 ? Colors.cyan : Colors.grey),
          Icon(Icons.star,
              size: 15, color: this.priority >= 2 ? Colors.cyan : Colors.grey),
          Icon(Icons.star,
              size: 15, color: this.priority >= 3 ? Colors.cyan : Colors.grey),
          Icon(Icons.star,
              size: 15, color: this.priority >= 4 ? Colors.cyan : Colors.grey),
          Icon(Icons.star,
              size: 15, color: this.priority >= 5 ? Colors.cyan : Colors.grey),
        ],
      ),
    );
  }
}
