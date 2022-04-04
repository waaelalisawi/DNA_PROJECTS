import 'package:flutter/material.dart';
import 'package:insta_second_try/util/shop_grid.dart';
class Shop extends StatelessWidget {
  const Shop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
              backgroundColor: Colors.transparent,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shop',
              style: TextStyle( fontWeight: FontWeight.bold,fontSize: 20),),
              Row( 
                children: [
                  Icon(Icons.calendar_today),
                  SizedBox(width: 10,),
                  Icon(Icons.menu)
                ],
              )
            ],
          ),
        )
      ),
      body: Column(
        children: [
          ClipRRect(
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

        Expanded(child: ShopGrid(),)
        ],
      ),
    );
  }
}
