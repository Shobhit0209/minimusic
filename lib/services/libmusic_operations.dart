//import 'package:flutter/material.dart';
import 'package:spotify_app/models/library_music.dart';

class LibMusicOpeartions {
  LibMusicOpeartions._();
  static List<LibMusic> getlibmusic() {
    return <LibMusic>[
      LibMusic(
        'My Workout Playlist',
        'https://i.scdn.co/image/ab67616d0000b2730595524a2c8f87b7b501ca70',
        'Playlist',
      ),
      LibMusic(
        'Party Time',
        'https://i1.sndcdn.com/artworks-000045189750-nyxfi1-t500x500.jpg',
        'Playlist',
      ),
      LibMusic(
          'Romantic Songs',
          'https://images.hungama.com/c/1/cf6/e65/33650486/33650486_300x300.jpg',
          'Playlist'),
      LibMusic(
          'Old is Gold',
          'https://images.sftcdn.net/images/t_app-cover-l,f_auto/p/80766144-d91b-44d4-a409-cfd2b549099a/3225773835/mohammad-rafi-songs-screenshot.png',
          'Playlist'),
      LibMusic(
          'Heart Broken',
          'https://c-cl.cdn.smule.com/rs-s88/arr/cb/5c/8d31de47-5b88-4369-a990-a68f292cd8a6.jpg',
          'Playlist'),
      LibMusic(
          'King',
          'https://c-cl.cdn.smule.com/smule-gg-uw1-s-5/arr/67/65/37d2bccd-5c44-4ae9-be72-bcd8f9024049.jpg',
          'Artist'),
    ];
  }
}
