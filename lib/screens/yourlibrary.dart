import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
import 'package:spotify_app/models/library_music.dart';
import 'package:spotify_app/screens/settings.dart';
//import 'package:spotify_app/models/music.dart';
import 'package:spotify_app/services/libmusic_operations.dart';

class YourLibrary extends StatefulWidget {
  const YourLibrary({super.key});

  @override
  State<YourLibrary> createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  List choices = ["Playlist", "Albums", "Artists"];
  int choiceIndex = 0;
  Widget createLibmusic(LibMusic libMusic) {
    return SizedBox(
        child: Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 80.0,
          width: 80.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(0.0),
              image: DecorationImage(image: NetworkImage(libMusic.musicimage))),
        ),
        SizedBox(
          width: 10.0,
        ),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            libMusic.musicname,
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            libMusic.musicdesc,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
        ]),
      ],
    ));
  }

  Widget createLibMusicList() {
    List<LibMusic> libmusiclist = LibMusicOpeartions.getlibmusic();
    return SizedBox(
      height: 800,
      child: ListView.separated(
        itemCount: libmusiclist.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return createLibmusic(
            libmusiclist[index],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 12);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    child: CircleAvatar(
                      child: Text('S'),
                    ),
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => SettingScreen()),
                    ),
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Aapki library',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Expanded(child: SizedBox()),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.white,
                      )),
                  IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        size: 35,
                      )),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  // itemExtent: 85,
                  itemCount: choices.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) => ChoiceChip(
                    label: Text(
                      choices[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    selected: choiceIndex == index,
                    selectedColor: Colors.blue,
                    onSelected: (value) => setState(() {
                      choiceIndex = value ? index : 0;
                    }),
                    backgroundColor: Colors.blueGrey.shade700,
                  ),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 8,
                    );
                  },
                ),
              ),
              SingleChildScrollView(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.access_time_sharp,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Recents',
                        style: TextStyle(color: Colors.white),
                      ),
                      Expanded(child: SizedBox()),
                      Icon(
                        Icons.grid_on,
                        color: Colors.white,
                        size: 18,
                      )
                    ]),
              ),
              SizedBox(),
              Expanded(child: createLibMusicList()),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blueGrey.shade300,
            Colors.black,
            Colors.black,
            Colors.black
          ], begin: Alignment.topRight, end: Alignment.bottomLeft))),
    );
  }
}
