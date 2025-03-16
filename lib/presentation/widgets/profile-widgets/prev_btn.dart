import 'package:flutter/material.dart';

class PrevBtn extends StatelessWidget {
  const PrevBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36, // Smaller button size
      height: 36,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black38, width: 1), // Light border
      ),
      child: IconButton(
        icon: const Icon(Icons.chevron_left, size: 20, color: Colors.black), // Smaller icon
        padding: EdgeInsets.zero, // Remove extra padding
        constraints: const BoxConstraints(),
        onPressed: () {
         Navigator.pop(context);
        },
      ),
    );
  }
}
