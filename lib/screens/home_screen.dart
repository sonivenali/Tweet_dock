import 'package:flutter/material.dart';

import 'bottom_Bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Tweet me",
          style: TextStyle(
              color: Colors.blue, fontSize: 22, fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.blue,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Icon(
              Icons.star_border_outlined,
              color: Colors.blue,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Divider(
              height: 2,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: CircleAvatar(
                      radius: 26.0,
                      backgroundImage:
                          AssetImage("assets/images/mainImage.jpg"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "What\'s happening?",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          //  when the TextFormField in unfocused
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, top: 8),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.image,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.videocam,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.poll,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.emoji_emotions,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: Icon(
                      Icons.schedule,
                      color: Colors.blue,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: FlatButton(
                        onPressed: () {},
                        minWidth: 80,
                        height: 45,
                        color: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(32)),
                        child: Text("Tweet",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ))),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Divider(
                height: 2,
                thickness: 1,
              ),
            ),
            buildProfile(
                context,
                "assets/images/userImage1.jpg",
                "Kerry W. Lothrop",
                "@kwlothrop . Mar 31",
                "The float of shame. #evergiven",
                "assets/images/tweet1.jpg"), //2nd thing
            buildProfile(
                context,
                "assets/images/userImage2.jpg",
                "Melissa Fumero",
                "@melissafumero . 10h",
                "Ba ba ba back in the Nine Nine!!! Yesterday, I was so excited to be back at work I forgot to take a pic to commemorate the occasion, so here’s a day 2 pic! #Brooklyn99 #Season8",
                "assets/images/tweet2.jpg"),
            buildProfile(
                context,
                "assets/images/userImage3.jpg",
                "Harshita Gupta",
                "@guptaharshita . 13",
                "Night curfew in Delhi Females:",
                "assets/images/tweet3.jpg"),
            buildProfile(
                context,
                "assets/images/userImage1.jpg",
                "Kerry W. Lothrop",
                "@kwlothrop . Mar 31",
                "Close enough! It’s from the pre-Minifigure days. The technic figures (right) had hands closer to those of Minifigures. #legotrivia",
                "assets/images/tweet5.jpg"),
            buildProfile(
                context,
                "assets/images/userImage2.jpg",
                "Melissa Fumero",
                "@melissafumero . 10h",
                ".@CUhlmann would you like a tshirt ?",
                "assets/images/tweet6.jpg"),
            buildProfile(
                context,
                "assets/images/userImage3.jpg",
                "Harshita Gupta",
                "@guptaharshita . Apr 4",
                "Divorce lawyers be like:",
                "assets/images/tweet4.jpg"),
          ],
        ),
      ),
    );
}

  Padding buildProfile(BuildContext context, userImage, userName, tweetDate,
      tweetCaption, tweetImage) {
    //1st thing
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 26.0,
            backgroundImage: AssetImage(
                userImage), // phir yaha jo build profile 1 mein naam diye hai wo pass kro..3rd step
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Text(
                      userName,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, left: 4),
                    child: Text(
                      tweetDate,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 150,
                  child: Text(
                    tweetCaption,
                    maxLines: 4,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ),
              Image.asset(
                tweetImage,
                fit: BoxFit.cover,
                height: 200,
                width: MediaQuery.of(context).size.width - 90,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.comment,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        "18",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    Icon(
                      Icons.sync,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        "269",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.grey,
                      size: 18,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Text(
                        "4k",
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    Icon(
                      Icons.send,
                      color: Colors.grey,
                      size: 18,
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
