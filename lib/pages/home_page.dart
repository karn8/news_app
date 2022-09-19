import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:news_app/resources/buttons.dart';
import 'package:news_app/resources/tabs.dart';


class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> items = [
    "Research & News",
    "Reactions",
    "Related",
  ];

  List<String> newsItemsHeader = [
    "The Hill",
    "BBC",
    "New York Times",
  ];

  List<String> newsItemsContent = [
    "Last week, the dire warnings that appeared in the Wall Street Journal, the Economists and Foreign affairs with China's imminent war or...",
    "Most people that spoke to china believe China is about to attack Taiwan. People say \"They are a bunch of gansters, man fishing on the ...",
    "content : news from new your times article on China's possible invasion on Taiwan",
  ];


  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [    
            Stack(
              children: [
                Image.asset('lib/resources/image_header.webp'),
                
                Positioned(
                  bottom: 0,
                child: Container(
                    width: 700,
                    //color: Colors.black54,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [Colors.black, Colors.black.withOpacity(0.0)])
                    ),
                    child: const Text(
                      'Will China invade Taiwan\nbefore end September?',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            )
                ]),
            Row(
              children: [            
                  Center(
                    child: Container(
                      width: 411,
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
                            padding: const EdgeInsets.only(top: 8.0),
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

                          const SizedBox(width: 80,),

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

                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 45,
                        child: ListView.builder(
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index){
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.all(5),
                                width: 120,
                                height: 45,
                                decoration: BoxDecoration(color:Colors.grey[150]),
                                child: Center(child: Text(
                                  items[index],
                                  style: TextStyle(
                                    color: current == index? Colors.purple.shade400 : Colors.grey[150],
                                    fontWeight: FontWeight.bold),
                                    ),),
                            
                              ),
                            );
                          }),
                      ),

                      Container(
                        width: 400,
                        height: 2,
                        color: Colors.grey[400],
                      ),

                      Container(
                        width: 400,
                        height: 10,
                        color: Colors.grey[200],
                      ),

                      Container(
                        color: Colors.grey[200],
                        width: 400,
                        height: 193,
                        child: SizedBox(
                          height: 80,
                          child: ListView.builder(
                            itemCount: 3,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: ((context, index) {
                            return GestureDetector(
                              onTap: (){},
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(5)),
                                    color: Colors.white,),
                                  height: 100,
                                  width: 150,
                                  child: Column(
                                    children: [
                                      Text(
                                        newsItemsHeader[index], 
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          color: Colors.grey[600],
                                          fontWeight: FontWeight.bold),
                                          ),

                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: Text(
                                            newsItemsContent[index],
                                            style: TextStyle(
                                              color: Colors.grey[500],
                                              fontSize: 12,
                                            ),),
                                        )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          })),
                        )
                        ),
                      

                      
                      // Container(
                      //   width: 800
                      //   height: 193,
                      //   color: Colors.red,
                      //   child: Column(
                      //     children:[
                      //       ListView.builder(
                      //         scrollDirection: Axis.horizontal,
                      //         itemBuilder: (context, index){
                      //       return GestureDetector(
                      //         onTap: (){
                      //           setState(() {
                      //             current = index;
                      //           });
                      //         },
                      //         child: AnimatedContainer(
                      //           duration: const Duration(milliseconds: 300),
                      //           width: 120,
                      //           height: 45,
                      //           decoration: BoxDecoration(color:Colors.grey[150]),
                      //           child: Center(child: Text(
                      //             items[index],
                      //             style: TextStyle(
                      //               color: current == index? Colors.purple.shade400 : Colors.grey[150],
                      //               fontWeight: FontWeight.bold),
                      //               ),),),
                      //       );
                      //     }
                      //       ),
                      //     ],
                      //   ),
                      // ),

                    ],
                  ),
                ),
              ],
        ),
      ),
      backgroundColor: Colors.grey[200],
      //appBar: AppBar(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
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
