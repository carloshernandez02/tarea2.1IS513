import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _valuefID = true;
  bool _valuePN = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profile Avatar and Info
            CircleAvatar(
              backgroundImage: NetworkImage('https://ih1.redbubble.net/image.2668043745.4689/raf,360x360,075,t,fafafa:ca443f4786.jpg'),
              radius: 45
            ),
            SizedBox(height: 8),
            Text(
              'Funky Cirno',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              '2funky4u@touhou.com',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              child: Text('Edit profile',
              style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                ),
                backgroundColor: Colors.black
              ),
              
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Inventories', style:
              TextStyle(color: const Color.fromARGB(113, 36, 36, 36))),
            ),
            SizedBox(height: 20,),
            Card(
              child: Column(
                children: [
                  ListTile(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
                    leading: Icon(Icons.store),
                    title: Row(children:[
                    Text('My stores'),
                    SizedBox(width: 10),
                    CircleAvatar(radius: 15, child: Text('2'), backgroundColor: Colors.blue.shade300,)
                  ] ),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
                ),
                Divider(indent:10, endIndent: 10 ,height: 0,),
                  ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
                  leading: Icon(Icons.support),
                  title: Text('Support'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
              ),
            ]
              ),
            ),
            SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text('Preferences', style:
              TextStyle(color: const Color.fromARGB(113, 36, 36, 36))),
            ),
            SizedBox(height: 12,),
            Card(
              child: Column(
                children: [
                  SwitchListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12))),
                  title: Text('Push notifications'),
                  value: _valuePN,
                  onChanged: (bool value) {
                    setState(() {
                      _valuePN = value;
                  });
                },
                secondary: Icon(Icons.notifications),
            ),Divider(indent:10, endIndent: 10 ,height: 0,),
                SwitchListTile(
                  title: Text('Face ID'),
                  value: _valuefID,
                  onChanged: (bool value) {
                    setState(() {
                      _valuefID = value;
                    });
              },
              secondary: Icon(Icons.face),
            ),Divider(indent:10, endIndent: 10 ,height: 0,),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text('PIN Code'),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {},
            ),Divider(indent:10, endIndent: 10 ,height: 0,),
                ListTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(12))),
                  leading: Icon(Icons.logout, color: Colors.red,),
                  title: Text('Logout', style: TextStyle(color: Colors.red),
                ),
              onTap: () {},
               ),
             ],
           )
          ),
         ],
        ),
      ),
    );
  }
}