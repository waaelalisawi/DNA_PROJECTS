import 'package:flutter/material.dart';
import 'package:insta_second_try/util/bubble_stories.dart';
class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //profile picture
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle
                  ),
                ),
                //number of post and fellowers
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Text('56',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                          ),),
                          Text('Posts')
                        ],
                      ),
                      Column(
                        children: [
                          Text('567',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          Text('followers')
                        ],
                      ),
                      Column(
                        children: [
                          Text('234',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),),
                          Text('Following')
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Waael Alisawi',style:
                TextStyle( fontWeight: FontWeight.bold),),
                Text('Dev. To Be'),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  flex: 5,
                  child: Container(
                    width: 100,
                    height: 30,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text("Edit Profile"),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    width: 100,
                    height: 30,
                    color: Colors.orange,
                    child: ElevatedButton(
                      onPressed: () {
                      },
                      child: Text("Edit Profile"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
            child: Row(
              children: [
                BubbleStores(text: 'story1'),
                BubbleStores(text: 'story2'),
                BubbleStores(text: 'story3'),
                BubbleStores(text: 'story4')



              ],
            ),
          )
        ],
      ),

    );
  }
}
