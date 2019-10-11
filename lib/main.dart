import 'package:flutter/material.dart';
import 'package:like_app/instagram_card.dart';

import 'models/instagram_post.dart';

void main() => runApp(AplikasiLikeInstagram());

class InstagramCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    InstagramPost instagramPost = new InstagramPost(
        profilePicture: 'images/insta_profpic.jpg',
        username: 'meidika_wardana',
        picture: 'https://pintar-android.com/wp_res/insta_pic2.png',
        likeCount: 3,
        text: 'Lagu romantis dari Jason Mraz :D');

    List<Widget> cards =
        new List.generate(3, (i) => new InstagramCard(instagramPost));

    return ListView(
      children: cards, /*<Widget>[
        InstagramCard()
      ],*/
    );
  }
}

class AplikasiLikeInstagram extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        body: InstagramCards(),
      ),
    );
  }
}
