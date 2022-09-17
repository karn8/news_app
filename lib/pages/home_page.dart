import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('lib/resources/image_header.webp'),

            SizedBox(height: 10,)
            
          ],
        ),
      ),
      backgroundColor: Colors.grey[50],
      //appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            activeColor: Colors.white,
            tabBackgroundColor: Colors.purple.shade300,
            gap: 8,
            padding: const EdgeInsets.all(5),
            tabs:[
              GButton(
                iconColor: Colors.grey[700],
                iconActiveColor: Colors.white,
                icon: Icons.article_rounded,
                text: 'Feed',),
              GButton(
                icon: Icons.trending_down_rounded,
                iconColor: Colors.grey[700],
                iconActiveColor: Colors.white,
                text: 'Trending',),
              GButton(
                icon: Icons.pie_chart_outline_rounded,
                iconColor: Colors.grey[700],
                iconActiveColor: Colors.white,
                text: 'Stats',),
              GButton(
                icon: Icons.person,
                iconColor: Colors.grey[700],
                iconActiveColor: Colors.white,
                text: 'Profile',)
            ]),
        ),
      )
    );
  }
}
