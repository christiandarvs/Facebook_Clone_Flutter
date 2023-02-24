import 'package:fb_clone/friend_request.dart';
import 'package:fb_clone/home.dart';
import 'package:fb_clone/menu.dart';
import 'package:fb_clone/watch.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
          length: 6,
          child: Scaffold(
            backgroundColor: const Color(0xff191a1c),
            appBar: AppBar(
              toolbarHeight: 70,
              actions: [
                CircleAvatar(
                    backgroundColor: const Color(0xff393a3c),
                    child: IconButton(
                        onPressed: (() {}),
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ))),
                const SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    backgroundColor: const Color(0xff393a3c),
                    child: Stack(
                      children: [
                        IconButton(
                            onPressed: (() {}),
                            icon: const Icon(
                              Icons.messenger_outline,
                              color: Colors.white,
                            )),
                        const Positioned(
                            left: 20,
                            top: 5,
                            child: CircleAvatar(
                              backgroundColor: Colors.red,
                              radius: 10,
                              child: Text(
                                '5',
                                style: TextStyle(color: Colors.white),
                              ),
                            ))
                      ],
                    )),
                const SizedBox(
                  width: 10,
                ),
              ],
              backgroundColor: const Color(0xff242527),
              bottom: const TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.home,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.people_outline,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.ondemand_video_outlined,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.storefront,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.notifications_none_rounded,
                        size: 30,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.menu_outlined,
                        size: 30,
                      ),
                    ),
                  ]),
              title: Text(
                'facebook',
                style: GoogleFonts.titilliumWeb(
                    fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            body: const TabBarView(
              children: [
                Home(),
                FriendRequest(),
                Watch(),
                Text('4'),
                Text('5'),
                Menu(),
              ],
            ),
          )),
    );
  }
}
