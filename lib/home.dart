import 'package:flutter/material.dart';
import 'package:insta_second_try/util/bubble_stories.dart';
import 'package:insta_second_try/util/user_posts.dart';
class UserHome extends StatelessWidget {
  // const UserHome({Key? key}) : super(key: key);
  final List people=['ali','ahmed','mo','amf','ghdfsg','fdg','dgs',];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent ,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Instgram',style: TextStyle(color: Colors.black),),
            Row(
              children: [
                Icon(Icons.add),
                Padding(padding: const EdgeInsets.all(25.0),
                child: Icon(Icons.favorite),),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          //here we use container insde listbuldier to put sroies
          //
          Container(
            height: 130,
            child: ListView.builder(scrollDirection: Axis.horizontal,
    itemCount: people.length,
    // addAutomaticKeepAlives: false,
    itemBuilder: (context, index){ return BubbleStores(text: people[index]);})
          ),
        //posts
          Expanded(child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context,index
          ){return UserPosts(name: people[index]);
          },))















        ],
      ),
    );
  }
}