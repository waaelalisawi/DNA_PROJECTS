import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  //const UserPosts({Key? key}) : super(key: key);
final String name;
  UserPosts({ required this.name});



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //profile photo
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,

            children: [
              Row(
                children: [
                  //profile photo
                  Container(
                    width: 40,
                    height: 40,
                    decoration:BoxDecoration(
                      color: Colors.grey[300],
                      shape: BoxShape.circle,

                    ),
                  ),
                  //btw profile
                  SizedBox(width: 5,),
                  //profile name
                  Text(name,style:TextStyle(fontWeight: FontWeight.bold),),

                ],
              ),
              Icon(Icons.menu),
            ],

          ),

        ),
        Container(
          height: 200,
          color: Colors.grey[300],
        ),
        //below the posts
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              Row(
                children: [
                  Icon(Icons.favorite),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              Icon(Icons.bookmark),
            ],
          ),
        ),
        //like by
        Padding(padding: const EdgeInsets.only(left: 8.0),
    child: Row(
    children: [

      Text('Liked by '),
    Text(' waael',style:TextStyle(fontWeight: FontWeight.bold),),
    Text(' and '),
    Text('otehrs',style: TextStyle( fontWeight: FontWeight.bold),),

    ]
    ),),
    //cahption
        Padding(padding: const EdgeInsets.only(top: 8,left:8),
          child:RichText(
            text:TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle( fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'i return the dirt ther troemng intotil end tyst will come to ypu '

                )
              ]
            ),
          )),

      ],

    );
  }
}
