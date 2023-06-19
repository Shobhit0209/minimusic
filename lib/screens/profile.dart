import 'package:flutter/material.dart';
// ignore: implementation_imports
import 'package:flutter/src/widgets/framework.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red.shade500,
        title: Text(''),
        elevation: 0,
      ),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.red,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      child: Text(
                        'S',
                        style: TextStyle(fontSize: 48),
                      ),
                      backgroundColor: Colors.red,
                      maxRadius: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Shobhit Singh',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Text(
                                '1k followers',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                minRadius: 2.0,
                              ),
                              SizedBox(
                                width: 4.0,
                              ),
                              Text(
                                '0 following',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12.0, vertical: 2.0),
                                height: 25,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.transparent,
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(16.0)),
                                child: Text(
                                  'Edit',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Playlists',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 40),
                Center(
                  child: Text(
                    'No Playlist saved',
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )),
    ));
  }
}
