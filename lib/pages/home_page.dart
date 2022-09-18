import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/resources/buttons.dart';


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
            Row(
              children: [            
                  Center(
                    child: Container(
                      width: 360,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                        gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color.fromARGB(255, 66, 94, 220),
                          Color.fromARGB(255, 173, 106, 232),
                          ],
                        )),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Column(
                              children: const [
                                Text(
                                  "CHANCE",
                                  style: TextStyle(
                                              fontSize: 15.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                  ),
                                ),

                                Text(
                                  ' 11% ',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 35),)
                              ],
                            ),
                          ),
                          const SizedBox(width: 10),

                          const Text(
                            '    24 HRS\n +25400\$',
                            style: TextStyle(
                              color: Colors.white
                            ),),

                          const SizedBox(width: 20,),

                          TextButton(
                            style: flatButtonStyleYes,
                            onPressed: () { },
                            child: const Text('YES'),
                          ),

                          const SizedBox(width: 10),

                          TextButton(
                            style: flatButtonStyleNo,
                            onPressed: () { },
                            child: const Text('NO'),
                          ),
                        ],
                      ),
                    ),
                  ),
              ]
                ),
                //SizedBox(height: 2,),

                Container(
                  height: 20,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [

                    ],
                  ),
                  ),
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
