import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotify_app/screens/profile.dart';
//import 'package:flutter/src/widgets/placeholder.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Settings',
            ),
            backgroundColor: Colors.grey.shade900),
        body: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: Text(
                'Free Account',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.white),
              child: Center(
                child: Text(
                  'Go Premium',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                height: 70,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.red,
                      maxRadius: 32,
                      child: Text('S', style: TextStyle(fontSize: 25)),
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shobhit Singh',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            'View profile',
                            style: TextStyle(color: Colors.grey, fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Expanded(
                            child: Icon(
                          Icons.chevron_right,
                          color: Colors.grey,
                          size: 20,
                        )),
                      ),
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  UserProfile())),
                    )
                  ],
                ),
              ),
            )
          ],
        )));
  }
}
