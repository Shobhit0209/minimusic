//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/models/category.dart';
import 'package:spotify_app/services/category_opeartions.dart';
import 'package:spotify_app/services/music_operations.dart';
import '../models/music.dart';
//import 'package:spotify_app/services/libmusic_operations.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Function _miniPlayer;
  Home(this._miniPlayer); //dart contructor shorthand
  //const Home({super.key});

  Widget createCategory(Category category) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey.shade700,
          borderRadius: BorderRadius.circular(10.0)),
      child: Row(children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.network(
            category.imageURL,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            category.name,
            style: const TextStyle(color: Colors.white, fontSize: 13.0),
          ),
        )
      ]),
    );
  }

  List<Widget> createListOfCategory() {
    List<Category> categoryList =
        CategoryOperations.getCategory(); //receive data
    //convert data to widget using map function.
    List<Widget> categories = categoryList
        .map((Category category) => createCategory(category))
        .toList();
    return categories;
  }

  Widget createMusic(Music music) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8.0,
          ),
          Container(
            height: 200,
            width: 200,
            child: InkWell(
              onTap: () {
                _miniPlayer(music, stop: true);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  music.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            music.name,
            style: const TextStyle(color: Colors.white),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(music.desc, style: const TextStyle(color: Colors.white))
        ],
      ),
    );
  }

  Widget createMusicList(String label) {
    List<Music> musicList = MusicOPerations.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          label,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 280,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return createMusic(musicList[index]);
            },
            itemCount: musicList.length,
          ),
        ),
      ]),
    );
  }

  Widget createGrid() {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 230,
      child: GridView.count(
        childAspectRatio: 7 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListOfCategory(),
        crossAxisCount: 2,
      ),
    );
  }

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
      actions: [
        Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings_rounded,
                  size: 25,
                )))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
          child: Container(
        child: Column(
          children: [
            createAppBar('Good Morning'),
            const SizedBox(
              height: 5,
            ),
            createGrid(),
            createMusicList('Music For You'),
            createMusicList('Playlist'),
          ],
        ),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blueGrey.shade300,
          Colors.black,
          Colors.black,
          Colors.black
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
      )),
    );
  }
}
