import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/headtext.dart';

class ProfileNavs extends StatelessWidget{
  String mainTitle;
  String description;

  ProfileNavs({super.key, 
    required this.mainTitle,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Headtext(title: mainTitle),
              Text(description),
            ],
          ),
          const Spacer(),
          const Icon(Icons.chevron_right, color: Colors.grey, size: 35,)
        ],
      ),
    );
  }
}