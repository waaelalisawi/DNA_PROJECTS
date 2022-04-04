import 'package:flutter/material.dart';
import 'package:insta_second_try/util/explor_grid.dart';
class Usersearch extends StatelessWidget {
  const Usersearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        //row iside cont to give it a color
        //clip to make borders
        title: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: EdgeInsets.all(4),
            color: Colors.grey[400],
            child: Row(
              children: [
                Icon(Icons.search,color: Colors.black,),
                Container(
                  child:Text('search',style: TextStyle(color: Colors.grey[500]),),
                )


              ],
            ),
          ),
        ),
      ),

      body: ExplorGrid(),
      );


  }
}

