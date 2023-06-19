//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  Widget createAppBar(String message) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message),
    );
  }

  Widget createSearchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Container(
          // height: 50.0,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'What do you want to listen to?',
                hintStyle: TextStyle(color: Colors.black),
                icon: Icon(Icons.search),
              ),
            ),
          )),
    );
  }

  Widget createCardGrid() {
    return Container(
      // color: Colors.white,
      // child: Padding(
      // padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 40),
      child: Column(children: <Widget>[
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/podcast.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/hindi.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/punjabi.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/live events.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/made for you.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/new releases.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/party.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/pop.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/mood.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/tv n movies.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/trending.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/travel.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/workout.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/love.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/instrumental.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/summer.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/indian classical.jpg',
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
          color: Colors.red,
          child: Image.asset(
            'assets/images/dance elec.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SafeArea(
      child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: .0, vertical: 8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              createAppBar('Search'),
              SizedBox(
                height: 10,
              ),
              createSearchBar(),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  'Bowse all',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: createCardGrid(),
              ),
            ]),
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blueGrey.shade300,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black,
            Colors.black
          ], begin: Alignment.topRight, end: Alignment.bottomLeft))),
    ));
  }
}
