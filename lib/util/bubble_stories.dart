// import 'package:flutter/material.dart';
// class bubble_stories extends StatefulWidget {
//   final String text;
//   bubble_stories({required this.text});
//
//   @override
//   _bubble_storiesState createState() => _bubble_storiesState();
// }
//
// class _bubble_storiesState extends State<bubble_stories> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(padding: const EdgeInsets.all(8.0),
//       child:Column(
//         children: [
//           Container(
//
//             width: 70,
//             height: 70,
//             decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey[500],),
//           ),
//           SizedBox(height: 10,),
//           Text(text)
//         ],
//       )
//
//       ,);
//   }
// }

import 'package:flutter/material.dart';
class BubbleStores extends StatelessWidget {
  final String text;
  BubbleStores({required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(8.0),
      child:Column(
        children: [
          Container(

            width: 70,
            height: 70,
            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey[500],),
          ),
          SizedBox(height: 10,),
          Text(text),
        ],
      )

      ,);
  }
}
































// class BubbleStories extends StatefulWidget {
//   // const BubbleStories({Key? key}) : super(key: key);
//
//   @override
//   _BubbleStoriesState createState() => _BubbleStoriesState();
// }
//
// class _BubbleStoriesState extends State<BubbleStories> {
//   final String text;
//   BubbleStories({required this.text})
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child:Column(
//         children: [
//           Container(
//
//             width: 70,
//             height: 70,
//             decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey[500],),
//           ),
//           SizedBox(height: 10,),
//           Text(text),
//         ],
//       ),
//     );
//   }
// }
