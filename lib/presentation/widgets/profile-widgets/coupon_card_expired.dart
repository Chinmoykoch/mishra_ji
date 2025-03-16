import 'package:flutter/material.dart';

class CouponCardExpired extends StatelessWidget {
  final String img;
  final String couponName;
  final String discount;
  final String validity;
  final Color topColor;

  const CouponCardExpired({
    Key? key,
    required this.img,
    required this.couponName,
    required this.discount,
    required this.validity,
    this.topColor = Colors.teal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: topColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  img,
                  height: 60,
                  width: 60,
                  fit: BoxFit.cover,
                ),
                SizedBox(width: 10,),
                Text(
                  couponName,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      discount,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      validity,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 10),
                    
                  ],
                ),
                Spacer(),
                ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Expired",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}