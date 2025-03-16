import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/screens/home_screen.dart';

class PrevBtn extends StatelessWidget {
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
        icon: Icon(Icons.chevron_left, size: 20, color: Colors.black), // Smaller icon
        padding: EdgeInsets.zero, // Remove extra padding
        constraints: BoxConstraints(),
        onPressed: () {
         Navigator.pop(context);
        },
      ),
    );
  }
}
