import 'package:flutter/material.dart';

class OptionsBtn extends StatelessWidget {
  const OptionsBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36, // Match size with PrevBtn
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black38, width: 1), // Light border
      ),
      child: IconButton(
        icon: const Icon(Icons.more_vert, size: 20, color: Colors.black), // Smaller icon
        padding: EdgeInsets.zero,
        constraints: const BoxConstraints(),
        onPressed: () {
          // TODO: Implement options menu
        },
      ),
    );
  }
}
