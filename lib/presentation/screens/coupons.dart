import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/coupon_card_active.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/coupon_card_expired.dart'; // Import expired card widget
import 'package:mishra_ji/presentation/widgets/profile-widgets/prev_btn.dart';

class Coupons extends StatefulWidget {
  @override
  _CouponsState createState() => _CouponsState();
}

class _CouponsState extends State<Coupons> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 16),
          child: PrevBtn(),
        ),
        title: Text(
          "Coupons",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.all(15),
              margin: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                children: [
                  _buildToggleButton("Active", true),
                  SizedBox(width: 8),
                  _buildToggleButton("Expired", false),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(25),
              child: Column(
                children: isActive
                    ? [ // Show active coupons
                        CouponCardActive(
                          img: "assets/images/coupon.png",
                          couponName: "BUY2GET1",
                          discount: "50% OFF",
                          validity: "Valid for only 4 days",
                        ),
                        CouponCardActive(
                          img: "assets/images/coupon.png",
                          couponName: "FASHION20",
                          discount: "50% OFF",
                          validity: "Valid for only 4 days",
                          topColor: Color(0xFFE24DA9),
                        ),
                      ]
                    : [ // Show expired coupons
                        CouponCardExpired(
                          img: "assets/images/coupon.png",
                          couponName: "SUMMER10",
                          discount: "10% OFF",
                          validity: "Expired on March 10",
                        ),
                        CouponCardExpired(
                          img: "assets/images/coupon.png",
                          couponName: "WINTER50",
                          discount: "50% OFF",
                          validity: "Expired on January 25",
                        ),
                      ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton(String text, bool isSelected) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            isActive = isSelected;
          });
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            color: isActive == isSelected ? Colors.black : Colors.white,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: isActive == isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
