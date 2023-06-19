import 'package:flutter/material.dart';
import 'package:spotify_app/models/category.dart';

class CategoryOperations {
  CategoryOperations._() {}
  static List<Category> getCategory() {
    return <Category>[
      Category('Trending',
          'https://cachedimages.podchaser.com/256x256/aHR0cHM6Ly9kM3dvNXdvanZ1djdsLmNsb3VkZnJvbnQubmV0L3RfcnNzX2l0dW5lc19zcXVhcmVfMTQwMC9pbWFnZXMuc3ByZWFrZXIuY29tL29yaWdpbmFsL2Q2N2FjM2NjOWIyNjRlYmMzYzg3NDY5OTEwMDc3Yjc5LmpwZw%3D%3D/aHR0cHM6Ly93d3cucG9kY2hhc2VyLmNvbS9pbWFnZXMvbWlzc2luZy1pbWFnZS5wbmc%3D'),
      Category('K Sanu & A Yagnik',
          'https://c-cl.cdn.smule.com/rs-s78/arr/bb/c4/5c5e853c-c2ef-4dad-abe1-753ff81d4a48.jpg'),
      Category('Salim Sulaiman',
          'https://e-cdn-images.dzcdn.net/images/artist/afbbf4e946a5ba49dceb88d987341b3e/256x256-000000-80-0-0.jpg'),
      Category('Sonu Nigam Hits',
          'https://c-cl.cdn.smule.com/rs-s79/arr/ea/bb/44134a23-d97c-4f9e-8d8d-c75272c94b4f.jpg'),
      Category('Sunidhi Chauhan',
          'https://c-cl.cdn.smule.com/rs-s78/arr/08/28/f2a7e4b3-6f49-4bd3-a8ff-ff5577a25a05.jpg'),
      Category('Shreya Ghoshal',
          'https://c-cl.cdn.smule.com/rs-s92/arr/81/f8/823e4202-553b-41b5-ba75-05dc4f71587b.jpg')
    ];
  }
}
