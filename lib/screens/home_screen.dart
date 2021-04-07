import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Expanded(flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,top: 8),
                    child: CircleAvatar(
                      radius: 30.0,
                      backgroundImage: NetworkImage(
                          'https://static.remove.bg/remove-bg-web/71dbdf11b48cb655eefe2f609ad67295258ae141/assets/start-0e837dcc57769db2306d8d659f53555feb500b3c5d456879b9c843d1872e7baa.jpg'),
                    ),
                  ),
                ),
                Expanded(flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8,right: 16),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "What\'s happening?",
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.transparent),
                          //  when the TextFormField in unfocused
                        ) ,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
