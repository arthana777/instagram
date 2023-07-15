import 'package:flutter/material.dart';
import 'package:instagramfluttermap/homescreen.dart';
import 'package:instagramfluttermap/view/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          iconTheme: IconThemeData(color: Colors.black54),
        appBarTheme: AppBarTheme(elevation: 1,
        color: Colors.white,
          iconTheme: IconThemeData(color: Colors.black54),
        ),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentPage==1?SearchPage(): Homepage(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
                onPressed: (){
                  setState(() {
                    currentPage=0;
                  });
                },
                icon: Icon(Icons.home,
                color:currentPage == 0 ? Colors.pinkAccent :Colors.black54,),
            ),
            Spacer(),
            IconButton(
              onPressed: (){
                setState(() {
                  currentPage=1;
                });
              },
              icon: Icon(Icons.search,
                color:currentPage == 1 ? Colors.pinkAccent :Colors.black54,),
            ),
            Spacer(),
            IconButton(
              onPressed: (){
                setState(() {
                  currentPage= 2;
                });
              },
              icon: Icon(Icons.add_box_outlined,
                color:currentPage == 2 ? Colors.pinkAccent :Colors.black54,),
            ),
            Spacer(),
            IconButton(
              onPressed: (){
                setState(() {
                  currentPage=3;
                });
              },
              icon: Icon(Icons.credit_card_outlined,
                color:currentPage == 3 ? Colors.pinkAccent :Colors.black54,),
            ),
            Spacer(),
            IconButton(
              onPressed: (){
                setState(() {
                  currentPage=4;
                });
              },
              icon: Icon(Icons.person,
                color:currentPage == 4 ? Colors.pinkAccent :Colors.black54,),
            ),

          ],
        ),
      ),
    );
  }
}
