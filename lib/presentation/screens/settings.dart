import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:mishra_ji/presentation/widgets/profile-widgets/headtext.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/prev_btn.dart';
import 'package:mishra_ji/presentation/widgets/profile-widgets/settings_navs.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  File? _image;
  bool _notificationsEnabled = true; // State variable for the switch

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

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
          "Settings",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          Icon(Icons.notifications_outlined),
          SizedBox(width: 8),
          Icon(Icons.language),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(30),
              child: Column(
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: _pickImage,
                      child: Stack(
                        alignment: Alignment.bottomRight,
                        children: [
                          CircleAvatar(
                            radius: 60,
                            backgroundColor: Colors.black,
                            child: ClipOval(
                              child: _image != null
                                  ? Image.file(
                                      _image!,
                                      fit: BoxFit.cover,
                                      width: 120,
                                      height: 120,
                                    )
                                  : Image.asset(
                                      'assets/images/profileimg.png',
                                      fit: BoxFit.cover,
                                      width: 120,
                                      height: 120,
                                    ),
                            ),
                          ),
                          Positioned(
                            right: 0,
                            bottom: 0,
                            child: GestureDetector(
                              onTap: _pickImage,
                              child: CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 20,
                                child: Icon(
                                  Icons.camera_alt_outlined,
                                  size: 20,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Headtext(title: "Samantha Josh"),
                  Text("New Delhi, India"),
                  SizedBox(height: 30),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 30, left: 30, top: 50, bottom: 15),
              decoration: BoxDecoration(
                color: Color(0xFFF9F9F9),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60), topRight: Radius.circular(60)),
              ),
              child: Column(
                children: [
                  SettingsNavs(icon: Icon(Icons.person, color: Colors.grey), title: "Edit Profile"),
                  SizedBox(height: 15),
                  SettingsNavs(icon: Icon(Icons.lock_outline, color: Colors.grey), title: "Change Password"),
                  SizedBox(height: 15),
                  SettingsNavs(
                    icon: Icon(Icons.notifications_outlined, color: Colors.grey), 
                    title: "Notifications",
                    trailingWidget: Switch(
                      activeColor: Colors.red,
                      value: _notificationsEnabled,
                      onChanged: (value) {
                        setState(() {
                          _notificationsEnabled = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 15),
                  SettingsNavs(icon: Icon(Icons.pin_drop_outlined, color: Colors.grey), title: "My Location"),
                  SizedBox(height: 15),
                  SettingsNavs(icon: Icon(Icons.logout_outlined, color: Colors.red), title: "Logout"),
                  SizedBox(height: 35),

                  SizedBox(
                    height: 50,
                    width: 150,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.question_mark_outlined, ),
                          SizedBox(width: 8,),
                          Text("Help Center")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}