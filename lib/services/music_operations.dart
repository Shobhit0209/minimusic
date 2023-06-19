import 'package:spotify_app/models/music.dart';

class MusicOPerations {
  MusicOPerations._();
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Kesariya tera ishq',
          'https://images.hungama.com/c/1/985/e68/90543862/90543862_300x300.jpg',
          'Bhrahmastra',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/db/a6/77/dba677db-5b64-0a2d-c19f-0f18d8fcc040/mzaf_18437633248411199823.plus.aac.p.m4a'),
      Music(
          'Maan Meri Jaan',
          'https://c-cl.cdn.smule.com/smule-gg-uw1-s-5/arr/67/65/37d2bccd-5c44-4ae9-be72-bcd8f9024049.jpg',
          'Champagne Talks',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/16/fe/f5/16fef555-4670-8bdc-a37a-d86fc212f6b2/mzaf_12982641028191561103.plus.aac.p.mp3'),
      Music(
          'Chak De India',
          'https://c-cl.cdn.smule.com/rs-s47/arr/bd/6e/30237b7c-adaa-413f-ace2-940105d8e6a2.jpg',
          'Chak De India',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/2b/86/28/2b862877-a04e-e24c-5836-5f14f9521ed4/mzaf_11547550738364745713.plus.aac.p.mp3'),
    ];
  }
}

class MoreMusicOPerations {
  MoreMusicOPerations._();
  static List<Music> getMusic() {
    return <Music>[
      Music(
          'Meri Jaan',
          'https://c-cl.cdn.smule.com/smule-gg-uw1-s-5/arr/67/65/37d2bccd-5c44-4ae9-be72-bcd8f9024049.jpg',
          'Bhrahmastra',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/db/a6/77/dba677db-5b64-0a2d-c19f-0f18d8fcc040/mzaf_18437633248411199823.plus.aac.p.m4a'),
      Music(
          'Chura K Dil Mera',
          'https://a10.gaanacdn.com/gn_img/albums/a7LWBaz3zX/7LWBe7kJ3z/size_m.webp',
          'Mai Khiladi Tu Anadi',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview115/v4/16/fe/f5/16fef555-4670-8bdc-a37a-d86fc212f6b2/mzaf_12982641028191561103.plus.aac.p.mp3'),
      Music(
          'Chak De India',
          'https://c-cl.cdn.smule.com/rs-s47/arr/bd/6e/30237b7c-adaa-413f-ace2-940105d8e6a2.jpg',
          'Chak De India',
          'https://audio-ssl.itunes.apple.com/itunes-assets/AudioPreview122/v4/2b/86/28/2b862877-a04e-e24c-5836-5f14f9521ed4/mzaf_11547550738364745713.plus.aac.p.mp3'),
    ];
  }
}
