import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/headtext.dart';

class SettingsNavs extends StatelessWidget{
  final Icon icon;
  final String title;
  final Widget? trailingWidget; // New widget option

  SettingsNavs({
    required this.icon,
    required this.title,
    this.trailingWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                icon,
                SizedBox(width: 15),
                Headtext(title: title),
              ],
            ),
            if (trailingWidget != null) trailingWidget!,
          ],
        ),
      ),
    );
  }
}
