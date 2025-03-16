import 'package:flutter/material.dart';
import 'package:mishra_ji/presentation/screens/coupons.dart';
import 'package:mishra_ji/presentation/screens/orders.dart';
import 'package:mishra_ji/presentation/screens/settings.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/headtext.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/options_btn.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/prev_btn.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/profile_navs.dart';

class Profile extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
        "My Profile",
        style: TextStyle(
          fontSize: 20, 
          fontWeight: FontWeight.bold, 
          color: Colors.black
        ),
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16), // Align with UI
          child: OptionsBtn(),
        ),
      ],
    ),


      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    child: ClipOval(child: Image.asset('assets/images/profileimg.png'))
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Headtext(title: "Samantha Josh"),
                      Text("samantha.josh@gmail.com")
                    ],
                  ),
                  
                ],
        
              ),
        
              //profile nav items
              SizedBox(height: 20,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Orders()));
                },
                child: ProfileNavs(mainTitle: "My Orders", description: "Already 7 orders placed")),
              Divider(thickness: 1,),
              ProfileNavs(mainTitle: "Shipping Address", description: "You have a single address"),
              Divider(thickness: 1,),
              ProfileNavs(mainTitle: "Wallets & Payments", description: "Already 7 orders placed"),
              Divider(thickness: 1,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Coupons()));
                },
                child: ProfileNavs(mainTitle: "My Coupons", description: "2 active coupons")),
              Divider(thickness: 1,),
              ProfileNavs(mainTitle: "My Reviews", description: "Reviews for 5 items"),
              Divider(thickness: 1,),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                },
                child: ProfileNavs(mainTitle: "Settings", description: "Notifications, Password")),
              Divider(thickness: 1,),
            ],
          ),
        ),
      ),
    );
  }
}