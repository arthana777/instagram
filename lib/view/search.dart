import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagramfluttermap/main.dart';

class SearchPage extends StatelessWidget {
   SearchPage({Key? key}) : super(key: key);
  List<String>buttons=[
    'reels',
    'food',
    'travel',
    'decor',
    'style',
    'art',
    'beauty',
    'diy',
    'music',

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
        slivers:<Widget> [
          SliverAppBar(
           title: TextFormField(
             decoration: InputDecoration(
               prefixIcon: Icon(Icons.search),
               hintText: 'search',
               contentPadding: EdgeInsets.all(0),
               border: OutlineInputBorder(
                 borderSide: BorderSide.none,
                 borderRadius: BorderRadius.circular(10),
               ),
               fillColor: Colors.white70,
               filled: true,
             ),
           ),
            actions: [
              IconButton(onPressed: (){}, icon: Icon(Icons.person_add))
            ],
         ),
          SliverAppBar(
            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(buttons.length, (index) =>
                    Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                      child: OutlinedButton(onPressed: () {  },
                        child: Text(buttons[index]),),
                ),),
              ),
            ),
          )
        ],
      ),
    );
  }
}
