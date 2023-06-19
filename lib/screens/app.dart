import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/models/music.dart';
import 'package:spotify_app/screens/home.dart';
import 'package:spotify_app/screens/search.dart';
import 'package:spotify_app/screens/yourlibrary.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  var Tabs = [];
  int currentTabIndex = 0;
  bool isPlaying = false;
  Music? music;
  Widget miniPlayer(Music? music, {bool stop = false}) {
    this.music = music;

    if (music == null) {
      return SizedBox();
    }
    if (stop == true) {
      isPlaying = false;
      _audioPlayer.stop();
    }
    setState(() {});
    Size deviceSize = MediaQuery.of(context).size;
    return AnimatedContainer(
        decoration: BoxDecoration(
            color: Colors.blueGrey.shade700,
            borderRadius: BorderRadius.circular(10.0)),
        duration: const Duration(milliseconds: 500),
        width: deviceSize.width,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              music.image,
              fit: BoxFit.cover,
            ),
            Text(music.name,
                style: TextStyle(color: Colors.white, fontSize: 17)),
            Icon(
              Icons.cast,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.heart,
              color: Colors.white,
            ),
            IconButton(
                onPressed: () async {
                  isPlaying = !isPlaying;
                  if (!isPlaying) {
                    await _audioPlayer.play(music.audioURL as Source);
                  } else {
                    await _audioPlayer.pause();
                  }
                  setState(() {});
                },
                icon: isPlaying
                    ? Icon(Icons.pause, color: Colors.white)
                    : Icon(Icons.play_arrow, color: Colors.white)),
          ],
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Tabs = [Home(miniPlayer), Search(), YourLibrary()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Tabs[currentTabIndex],
      backgroundColor: Colors.black,
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          miniPlayer(music),
          BottomNavigationBar(
              currentIndex: currentTabIndex,
              onTap: (currentIndex) {
                //  print("current idex is $currentIndex");
                currentTabIndex = currentIndex;
                setState(() {}); //triggering the re rendering process.
              },
              unselectedItemColor: Colors.white,
              selectedIconTheme: IconThemeData(size: 0.0),
              selectedLabelStyle: const TextStyle(color: Colors.white),
              selectedItemColor: Colors.white,
              backgroundColor: Colors.transparent,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home_filled,
                      color: Colors.white,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                  icon: Icon(
                    CupertinoIcons.search,
                    color: Colors.white,
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      CupertinoIcons.music_albums,
                      color: Colors.white,
                    ),
                    label: 'Aapki Library')
              ])
        ],
      ),
    );
  }
}
