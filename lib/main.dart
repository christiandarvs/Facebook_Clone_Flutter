import 'package:fb_clone/create_post.dart';
import 'package:fb_clone/friend_request.dart';
import 'package:fb_clone/img_grid_post.dart';
import 'package:fb_clone/menu.dart';
import 'package:fb_clone/post_content.dart';
import 'package:fb_clone/post_with_image.dart';
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
                Text('3'),
                Text('4'),
                Text('5'),
                Menu(),
              ],
            ),
          )),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> names = [
    'Anthony Anderson',
    'Lisa Payne',
    'Andrew Campos',
    'William Martin',
    'Benjamin York',
    'Emily Woods',
    'Lisa Olsan',
    'Steven Frye'
  ];
  List<String> myDayIcons = [
    'https://images.pexels.com/photos/10057618/pexels-photo-10057618.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/10513822/pexels-photo-10513822.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1172207/pexels-photo-1172207.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/733872/pexels-photo-733872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/415829/pexels-photo-415829.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1680172/pexels-photo-1680172.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
  ];

  List<String> myDayContent = [
    'https://images.pexels.com/photos/302896/pexels-photo-302896.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/6791741/pexels-photo-6791741.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2653362/pexels-photo-2653362.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/207692/pexels-photo-207692.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/264512/pexels-photo-264512.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/2147491/pexels-photo-2147491.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1174746/pexels-photo-1174746.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
    'https://images.pexels.com/photos/1331750/pexels-photo-1331750.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: double.infinity,
          color: const Color(0xff242527),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-1/306797224_154788703853657_4201603360433828675_n.jpg?stp=dst-jpg_p240x240&_nc_cat=105&ccb=1-7&_nc_sid=7206a8&_nc_eui2=AeH6HgZcyAlnBfPeuzh8-eADmZZNTvYgsJaZlk1O9iCwlsh-SxS7X5xIpTNSOJKQjhSpP7IerOMwFySZAioWJLTn&_nc_ohc=kXk_ignTjdQAX-ClDQM&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfCgXQIw5BiIy4dZBnrz1h8RkvrwFU3xnRLbrcCueWnJ4Q&oe=63FD4099'),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) {
                      return const CreatePost();
                    })));
                  },
                  child: Container(
                    alignment: const Alignment(-0.5, 0),
                    height: 40,
                    width: 235,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30)),
                    child: const Text(
                      'What\'s on your mind?',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
                const Icon(
                  Icons.photo_library_outlined,
                  color: Colors.green,
                  size: 30,
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 180,
          color: const Color(0xff242527),
          child: ListView.builder(
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  width: 100,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(myDayContent[index]),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 20,
                          child: CircleAvatar(
                            radius: 17,
                            backgroundImage: NetworkImage(myDayIcons[index]),
                          ),
                        ),
                        Text(
                          names[index],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                );
              })),
        ),
        const SizedBox(
          height: 10,
        ),
        const ImgGridPost(
            name: 'Uniqlo Philippines',
            datePosted: 15,
            dp: 'https://image.isu.pub/180523051134-16bd5c057f39098effb722e376b4d06c/jpg/page_1.jpg',
            imgURL: [
              'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-6/332831076_1120028842728794_321433630912579204_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=105&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeG-az3CIjpvvfZlT5RuzFDh643Nep0qGOXrjc16nSoY5WKZxwxDC3P4Lg-kCUlKicjgKNX0x4Fp49LHj73y6GZe&_nc_ohc=5XUJtKJBAfwAX_vlDDQ&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfBUipLI87__HRzguzPb67fN0aExYcIgNZzdgY0-18-iJw&oe=63FD5C65',
              'https://scontent.fmnl25-2.fna.fbcdn.net/v/t39.30808-6/332850006_984679205832781_2481870077435144880_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=111&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeHodUnqe6j-rgOp4AK0veSKbj2b7cXOWE1uPZvtxc5YTWZmKMru3ZyEoCz5IsJ7kIfYTRY3BW450-e58A-PMjON&_nc_ohc=inRsoLJzo2YAX-f9ogt&_nc_ht=scontent.fmnl25-2.fna&oh=00_AfCkoUZjy6rSIfkCP5f0DWqPBpP_l9S4RDlfg3LLsLrLTw&oe=63FD3BFE',
              'https://scontent.fmnl25-5.fna.fbcdn.net/v/t39.30808-6/332819369_1273474069910087_7536797351684706606_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=104&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeH0G6BPAC_0KulJg6oxwoPWn43tmg-Sr4qfje2aD5KviuJ10tkkodXyyFr2Ix_E1jPYH1YLMQRU5W_K6u7J2naM&_nc_ohc=9CdZ3GW7x5EAX-oyr_S&_nc_ht=scontent.fmnl25-5.fna&oh=00_AfBXaCuBy_1IdmJZBUfzKpkkvjz-nC9tzso4ktyMMx_Vvg&oe=63FC1802',
              'https://scontent.fmnl25-4.fna.fbcdn.net/v/t39.30808-6/332647158_862235845006694_5083357798144554518_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=107&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeHGk4NjP0WViNOUA6B8SrGe5mF3mCd27_nmYXeYJ3bv-Yb1jVey9-amMfuFYUDLYTWTHlksRWi2PEEjgQBBKLRS&_nc_ohc=xARP9MS2N3QAX_6vwQ5&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl25-4.fna&oh=00_AfA77FfKFGehW6GHN3a-6klAGPuh699Hguofqvy1cZSmCg&oe=63FBF46B'
            ],
            postHeight: 540),
        const SizedBox(
          height: 10,
        ),
        const PostContent(
            name: 'Antonio Aguirre',
            dp:
                'https://scontent.fmnl25-2.fna.fbcdn.net/v/t39.30808-6/278095502_547118480309514_6596262336990484237_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeETwnPJG50JlHFHggY8qm0ldli2QNE_Gj12WLZA0T8aPZtADNkW9gPxW1ouHfPLvachqUNSYyLAEAqocFJF3VZp&_nc_ohc=GX27CCa_gPQAX9vxfE9&_nc_ht=scontent.fmnl25-2.fna&oh=00_AfBkWzNwI-OYm9G8GLu69-Sd1UeedrsFu7eSOT54YEA1Cw&oe=63FBF173',
            datePosted: 2,
            post:
                'No matter what happens, keep moving forward.\n\nLife is full of ups and downs, but what matters most is how we respond to them.\n\nEven when things seem difficult, keep moving forward.',
            postHeight: 315),
        const SizedBox(
          height: 10,
        ),
        const PostWithImg(
            name: 'The Last of Us',
            imgURL:
                'https://scontent.fmnl3-2.fna.fbcdn.net/v/t39.30808-6/331322666_1708922119510438_6226249537519036733_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=730e14&_nc_eui2=AeHxce2D2gy5ERfdyTaAEAe5NgdP42zaAh02B0_jbNoCHYQ0c263iG6hKDr6D_FEDLYnE3ghNf61c4-POLGQGqwM&_nc_ohc=_WBrSENXfFMAX-SuT1m&_nc_ht=scontent.fmnl3-2.fna&oh=00_AfA_Q52K3-QchJOhJLsMYQE4bxaw0Hsah5KzbgBsf5jtSw&oe=63FDCCA9',
            datePosted: 2,
            dp: 'https://scontent.fmnl3-2.fna.fbcdn.net/v/t39.30808-6/316686547_453875933536217_7382388425971722043_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEn7gZ111I0LSW6tFujx_gH2AGG_g741E3YAYb-DvjUTfStwIMapxuUO6RCik_1YYd_8vaFCZgTwRvL6ZjhDUUQ&_nc_ohc=2rbgLtUPWiEAX_9_fAQ&_nc_oc=AQnw1bKX6LbBHsm6DTsjWiniQsF1HH1iwxletOWuOLwqECbVSpHDJoaa85mBAItnenM&_nc_ht=scontent.fmnl3-2.fna&oh=00_AfCGojXTllQa6Gb0HyqC-wIxGHlbpKa143ji5T_JTDxPvw&oe=63FD8B1D',
            postHeight: 415),
        const SizedBox(
          height: 10,
        ),
        const PostWithImg(
          name: 'LADbible',
          imgURL:
              'https://external-preview.redd.it/5IZNCIPzyiJo0yvgkPaUKZkWSMpv6rHGsGhjeY7lyA4.jpg?width=640&crop=smart&auto=webp&v=enabled&s=d04bd713f9eef899aae9ac4a4848d6ea7f382c8e',
          datePosted: 1,
          dp: 'https://scontent.fmnl25-2.fna.fbcdn.net/v/t31.18172-8/17240677_3135229129857589_14791039841144235_o.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGxFL7lWHAtgsV1bHobwgRFlQAHkwaN8aaVAAeTBo3xpgS4f9tvaj7oK9_dk0NGwGDi0iKLXRI2IPqlnoaEXpMw&_nc_ohc=_1D_hQaEKfwAX9Rzuqo&_nc_ht=scontent.fmnl25-2.fna&oh=00_AfB143voPiXUS142kZVvJEwK5ZxUAPT4xWP4K_rjTuw8_g&oe=641F79EE',
          postHeight: 415,
        )
      ],
    );
  }
}
