import 'package:flutter/widgets.dart';

class Headtext extends StatelessWidget{

  String title;
  Color ?textcol;
  double ?fontsize;
  FontWeight ?fontWeight;

  Headtext({
    required this.title,
    this.textcol,
    this.fontWeight = FontWeight.w700,
    this.fontsize = 20
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(title, 
      style: TextStyle(
        fontSize: fontsize,
        fontWeight: fontWeight,
        color: textcol  
      ),
    
    );
  }
}