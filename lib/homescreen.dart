import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String>profileImages=[
    "assets/images/profile1.jpeg",
    "assets/images/profile2.jpg",
    "assets/images/profile3.jpeg",
    "assets/images/profile4.jpeg",
    "assets/images/profile5.jpeg",
    "assets/images/profile6.jpeg",
  ];
  List<String>posts=[
    "assets/images/post1.png",
    "assets/images/post2.png",
     "assets/images/post3.png",
    "assets/images/post4.png",
    "assets/images/post5.png",
        "assets/images/post6.png",
        "assets/images/post7.png",
  ];
  Future<void>onRefresh()async{
    await Future.delayed(Duration(seconds: 1));

}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/instatitle.jpg",
          height: 50,),
        actions: [
          IconButton(
              icon: Icon(Icons.favorite_border_outlined),
            onPressed: (){},),
          IconButton(
            icon: Icon(Icons.messenger_outline),
            onPressed: (){},),
        ],
      ),
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(6, (index) =>
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundColor: Colors.green,
                              //backgroundImage: AssetImage(profileImages[index],),
                              child: CircleAvatar(
                                radius: 32,
                                backgroundImage: AssetImage(profileImages[index],),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text('profile name',
                            style: TextStyle(fontSize: 12),),
                          ],
                        ),

                      ),
                  ),
                ),
              ),
              Divider(),
              Column(
                children: List.generate(profileImages.length, (index) => Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //header post
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 14,
                            backgroundColor: Colors.green,
                            child: CircleAvatar(
                              radius: 12,
                              backgroundImage: AssetImage(profileImages[index],),
                            ),
                          ),
                        ),
                        Text('profile name',
                        style: TextStyle(fontSize: 12),),
                        Spacer(),
                        IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))

                      ],
                    ),
                    //image post
                    Image.asset(posts[index]),
                    Row(
                      children: [
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.favorite_border_outlined),
                        ),
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.messenger_outline),
                        ),
                        Spacer(),
                        IconButton(onPressed: (){},
                            icon: Icon(Icons.label_outline),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(text:  " liked by ",
                              style: TextStyle(color: Colors.black),
                              ),

                              TextSpan(text:  " Profile name ",
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  color: Colors.black
                              ),
                              ),
                              TextSpan(text:  " and ",
                                  style: TextStyle(color: Colors.black),),
                              TextSpan(text:  " others ",
                                  style: TextStyle(color: Colors.black)),
                            ]
                          ),),
                          RichText(text: TextSpan(
                              children: [

                                TextSpan(text:  "Profile name",
                                  style: TextStyle(fontWeight: FontWeight.bold,
                                      color: Colors.black
                                  ),
                                ),
                                TextSpan(text:  "   This is the best course ever made",
                                    style: TextStyle(color: Colors.black)),
                              ]
                          ),),
                          Text("view all comments",
                          style: TextStyle(color: Colors.black38),)
                        ],
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
