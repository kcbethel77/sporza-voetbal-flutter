import 'package:flutter/material.dart';

class LiveDesignation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellowAccent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.horizontal(
          left: const Radius.circular(8),
          right: const Radius.circular(8),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Live"),
      ),
    );
  }
}
