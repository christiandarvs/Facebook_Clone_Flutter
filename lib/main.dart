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
        const ImgGridPost(),
        const SizedBox(
          height: 10,
        ),
        const PostContent(),
        const SizedBox(
          height: 10,
        ),
        const PostWithImg()
      ],
    );
  }
}

class PostContent extends StatefulWidget {
  const PostContent({super.key});

  @override
  State<PostContent> createState() => _PostContentState();
}

class _PostContentState extends State<PostContent> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff242527),
      height: 315,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Antonio Aguirre',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.check,
                        size: 10,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
            subtitle: Row(
              children: const [
                Text(
                  '1d',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.people_alt,
                  color: Colors.grey,
                )
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent.fmnl25-2.fna.fbcdn.net/v/t39.30808-6/278095502_547118480309514_6596262336990484237_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeETwnPJG50JlHFHggY8qm0ldli2QNE_Gj12WLZA0T8aPZtADNkW9gPxW1ouHfPLvachqUNSYyLAEAqocFJF3VZp&_nc_ohc=GX27CCa_gPQAX9vxfE9&_nc_ht=scontent.fmnl25-2.fna&oh=00_AfBkWzNwI-OYm9G8GLu69-Sd1UeedrsFu7eSOT54YEA1Cw&oe=63FBF173'),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              'No matter what happens, keep moving forward.\n\nLife is full of ups and downs, but what matters most is how we respond to them.\n\nEven when things seem difficult, keep moving forward.',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.favorite,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.thumb_up_sharp,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '92',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              thickness: 1,
              height: 10,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: (() {
                    setState(() {
                      liked = !liked;
                    });
                  }),
                  icon: liked
                      ? const Icon(
                          Icons.thumb_up,
                          color: Colors.blue,
                        )
                      : const Icon(
                          Icons.thumb_up_outlined,
                          color: Colors.grey,
                        ),
                  label: liked
                      ? const Text(
                          'Like',
                          style: TextStyle(color: Colors.blue),
                        )
                      : const Text(
                          'Like',
                          style: TextStyle(color: Colors.grey),
                        )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey),
                  )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.turn_right_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Share',
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class PostWithImg extends StatefulWidget {
  const PostWithImg({super.key});

  @override
  State<PostWithImg> createState() => _PostWithImgState();
}

class _PostWithImgState extends State<PostWithImg> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff242527),
      height: 415,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'LADbible',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.check,
                        size: 10,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
            subtitle: Row(
              children: const [
                Text(
                  '1d',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.people_alt,
                  color: Colors.grey,
                )
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://scontent.fmnl25-2.fna.fbcdn.net/v/t31.18172-8/17240677_3135229129857589_14791039841144235_o.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGxFL7lWHAtgsV1bHobwgRFlQAHkwaN8aaVAAeTBo3xpgS4f9tvaj7oK9_dk0NGwGDi0iKLXRI2IPqlnoaEXpMw&_nc_ohc=_1D_hQaEKfwAX9Rzuqo&_nc_ht=scontent.fmnl25-2.fna&oh=00_AfB143voPiXUS142kZVvJEwK5ZxUAPT4xWP4K_rjTuw8_g&oe=641F79EE'),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Container(
                color: Colors.red,
                height: 220,
                width: double.infinity,
                child: Image.network(
                  alignment: Alignment.topCenter,
                  'https://external-preview.redd.it/5IZNCIPzyiJo0yvgkPaUKZkWSMpv6rHGsGhjeY7lyA4.jpg?width=640&crop=smart&auto=webp&v=enabled&s=d04bd713f9eef899aae9ac4a4848d6ea7f382c8e',
                  fit: BoxFit.cover,
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.favorite,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.thumb_up_sharp,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '92',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: (() {
                    setState(() {
                      liked = !liked;
                    });
                  }),
                  icon: liked
                      ? const Icon(
                          Icons.thumb_up,
                          color: Colors.blue,
                        )
                      : const Icon(
                          Icons.thumb_up_outlined,
                          color: Colors.grey,
                        ),
                  label: liked
                      ? const Text(
                          'Like',
                          style: TextStyle(color: Colors.blue),
                        )
                      : const Text(
                          'Like',
                          style: TextStyle(color: Colors.grey),
                        )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey),
                  )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.turn_right_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Share',
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class ImgGridPost extends StatefulWidget {
  const ImgGridPost({super.key});

  @override
  State<ImgGridPost> createState() => _ImgGridPostState();
}

class _ImgGridPostState extends State<ImgGridPost> {
  List<String> imgURL = [
    'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-6/332831076_1120028842728794_321433630912579204_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=105&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeG-az3CIjpvvfZlT5RuzFDh643Nep0qGOXrjc16nSoY5WKZxwxDC3P4Lg-kCUlKicjgKNX0x4Fp49LHj73y6GZe&_nc_ohc=5XUJtKJBAfwAX_vlDDQ&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfBUipLI87__HRzguzPb67fN0aExYcIgNZzdgY0-18-iJw&oe=63FD5C65',
    'https://scontent.fmnl25-2.fna.fbcdn.net/v/t39.30808-6/332850006_984679205832781_2481870077435144880_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=111&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeHodUnqe6j-rgOp4AK0veSKbj2b7cXOWE1uPZvtxc5YTWZmKMru3ZyEoCz5IsJ7kIfYTRY3BW450-e58A-PMjON&_nc_ohc=inRsoLJzo2YAX-f9ogt&_nc_ht=scontent.fmnl25-2.fna&oh=00_AfCkoUZjy6rSIfkCP5f0DWqPBpP_l9S4RDlfg3LLsLrLTw&oe=63FD3BFE',
    'https://scontent.fmnl25-5.fna.fbcdn.net/v/t39.30808-6/332819369_1273474069910087_7536797351684706606_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=104&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeH0G6BPAC_0KulJg6oxwoPWn43tmg-Sr4qfje2aD5KviuJ10tkkodXyyFr2Ix_E1jPYH1YLMQRU5W_K6u7J2naM&_nc_ohc=9CdZ3GW7x5EAX-oyr_S&_nc_ht=scontent.fmnl25-5.fna&oh=00_AfBXaCuBy_1IdmJZBUfzKpkkvjz-nC9tzso4ktyMMx_Vvg&oe=63FC1802',
    'https://scontent.fmnl25-4.fna.fbcdn.net/v/t39.30808-6/332647158_862235845006694_5083357798144554518_n.jpg?stp=cp0_dst-jpg_e15_fr_q65&_nc_cat=107&ccb=1-7&_nc_sid=8024bb&efg=eyJpIjoidCJ9&_nc_eui2=AeHGk4NjP0WViNOUA6B8SrGe5mF3mCd27_nmYXeYJ3bv-Yb1jVey9-amMfuFYUDLYTWTHlksRWi2PEEjgQBBKLRS&_nc_ohc=xARP9MS2N3QAX_6vwQ5&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl25-4.fna&oh=00_AfA77FfKFGehW6GHN3a-6klAGPuh699Hguofqvy1cZSmCg&oe=63FBF46B'
  ];
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff242527),
      height: 515,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Text(
                      'Uniqlo Philippines',
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    CircleAvatar(
                      radius: 10,
                      child: Icon(
                        Icons.check,
                        size: 10,
                      ),
                    )
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.more_horiz,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.close,
                      color: Colors.grey,
                    )
                  ],
                )
              ],
            ),
            subtitle: Row(
              children: const [
                Text(
                  '15 hrs',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.public,
                  color: Colors.grey,
                )
              ],
            ),
            leading: const CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  'https://image.isu.pub/180523051134-16bd5c057f39098effb722e376b4d06c/jpg/page_1.jpg'),
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: SizedBox(
                  height: 340,
                  width: double.infinity,
                  child: GridView.builder(
                      itemCount: 4,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: ((context, index) {
                        return Card(
                          child: Image.network(imgURL[index]),
                        );
                      })))),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Row(
                  children: const [
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.red,
                      child: Icon(
                        Icons.favorite,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Icon(
                        Icons.thumb_up_sharp,
                        size: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      '92',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Divider(
              height: 10,
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton.icon(
                  onPressed: (() {
                    setState(() {
                      liked = !liked;
                    });
                  }),
                  icon: liked
                      ? const Icon(
                          Icons.thumb_up,
                          color: Colors.blue,
                        )
                      : const Icon(
                          Icons.thumb_up_outlined,
                          color: Colors.grey,
                        ),
                  label: liked
                      ? const Text(
                          'Like',
                          style: TextStyle(color: Colors.blue),
                        )
                      : const Text(
                          'Like',
                          style: TextStyle(color: Colors.grey),
                        )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.mode_comment_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Comment',
                    style: TextStyle(color: Colors.grey),
                  )),
              TextButton.icon(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.turn_right_outlined,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Share',
                    style: TextStyle(color: Colors.grey),
                  ))
            ],
          )
        ],
      ),
    );
  }
}

class CreatePost extends StatelessWidget {
  const CreatePost({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> options = [
      'Photo/video',
      'Tag people',
      'Feeling/activity',
      'Check in',
      'Live Video',
      'Background color',
      'Camera',
      'GIF',
      'Music',
      'Layouts',
      'Your avatar'
    ];
    List<Icon> optionIcons = [
      const Icon(
        Icons.photo_library_outlined,
        color: Colors.green,
      ),
      const Icon(
        Icons.person_add_alt_1,
        color: Colors.blue,
      ),
      const Icon(
        Icons.emoji_emotions_outlined,
        color: Colors.amber,
      ),
      const Icon(
        Icons.location_on_sharp,
        color: Colors.orange,
      ),
      const Icon(
        Icons.video_camera_back_outlined,
        color: Colors.red,
      ),
      const Icon(
        Icons.color_lens,
        color: Colors.teal,
      ),
      const Icon(
        Icons.camera_alt,
        color: Colors.blue,
      ),
      const Icon(
        Icons.gif_box_rounded,
        color: Colors.teal,
      ),
      const Icon(
        Icons.music_note,
        color: Colors.orange,
      ),
      const Icon(
        Icons.grid_view_sharp,
        color: Colors.pink,
      ),
      const Icon(
        Icons.emoji_emotions_rounded,
        color: Colors.red,
      )
    ];
    return Scaffold(
      backgroundColor: const Color(0xff242527),
      appBar: AppBar(
        backgroundColor: const Color(0xff242527),
        title: const Text('Create Post'),
        actions: const [],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: const Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Christian Darvin',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Row(
                children: [
                  SizedBox(
                    height: 30,
                    width: 105,
                    child: OutlinedButton.icon(
                      onPressed: (() {}),
                      icon: const Icon(Icons.public, color: Colors.grey),
                      label: const Text(
                        'Public',
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 30,
                    width: 105,
                    child: OutlinedButton.icon(
                      onPressed: (() {}),
                      icon: const Icon(Icons.public, color: Colors.grey),
                      label: const Text(
                        'Album',
                        style: TextStyle(color: Colors.grey),
                      ),
                      style: OutlinedButton.styleFrom(
                          side: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ],
              ),
              leading: const CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(
                    'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-6/306797224_154788703853657_4201603360433828675_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH6HgZcyAlnBfPeuzh8-eADmZZNTvYgsJaZlk1O9iCwlsh-SxS7X5xIpTNSOJKQjhSpP7IerOMwFySZAioWJLTn&_nc_ohc=kXk_ignTjdQAX-ClDQM&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfBB8HPy8JF9_n1moR1ulKsQobHC-uDowL_J9f4LO8bC5Q&oe=63FC255F'),
              ),
            ),
            const Expanded(
              child: SizedBox(
                  width: double.infinity,
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 25),
                    child: Text(
                      'What\'s on your mind? ',
                      style: TextStyle(color: Colors.grey, fontSize: 22),
                    ),
                  )),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(top: BorderSide(color: Colors.grey))),
                  child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider(
                          thickness: 1,
                          color: Colors.grey,
                        );
                      },
                      itemCount: options.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          leading: optionIcons[index],
                          title: Text(
                            options[index],
                            style: const TextStyle(color: Colors.white),
                          ),
                        );
                      })),
                )),
          ],
        ),
      ),
    );
  }
}

class FriendRequest extends StatelessWidget {
  const FriendRequest({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Friends',
                style: GoogleFonts.titilliumWeb(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              IconButton(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff393a3c),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text('Suggestions'),
              ),
              const SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: (() {}),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff393a3c),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                child: const Text('Your Friends'),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Divider(
            thickness: 1,
            color: Colors.grey,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    'Friend requests',
                    style: GoogleFonts.titilliumWeb(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 22),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '85',
                    style: GoogleFonts.titilliumWeb(
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                        fontSize: 22),
                  ),
                ],
              ),
              TextButton(
                  onPressed: (() {}),
                  child: const Text(
                    'See all',
                    style: TextStyle(fontSize: 18),
                  ))
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: ((context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.all(20),
                  title: const Text(
                    'dasdsda',
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: const CircleAvatar(
                    radius: 40,
                  ),
                  subtitle: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                            onPressed: (() {}), child: const Text('Confirm')),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: (() {}),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff393a3c)),
                          child: const Text('Delete'),
                        ),
                      )
                    ],
                  ),
                );
              })),
        )
      ],
    );
  }
}

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    List<Icon> icons = [
      const Icon(
        Icons.bookmark_outlined,
        color: Colors.deepPurple,
      )
    ];
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Menu',
                style: GoogleFonts.titilliumWeb(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.white,
                      )),
                  IconButton(
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ))
                ],
              )
            ],
          ),
        ),
        ListTile(
          onTap: () {},
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://scontent.fmnl25-1.fna.fbcdn.net/v/t39.30808-6/306797224_154788703853657_4201603360433828675_n.jpg?_nc_cat=105&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH6HgZcyAlnBfPeuzh8-eADmZZNTvYgsJaZlk1O9iCwlsh-SxS7X5xIpTNSOJKQjhSpP7IerOMwFySZAioWJLTn&_nc_ohc=kXk_ignTjdQAX-ClDQM&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl25-1.fna&oh=00_AfBB8HPy8JF9_n1moR1ulKsQobHC-uDowL_J9f4LO8bC5Q&oe=63FC255F'),
          ),
          title: const Text(
            'Christian Darvin',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          subtitle: const Text(
            'See your profile',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Divider(
            thickness: 1,
            color: Colors.white,
          ),
        ),
        //Kapag ListView ang parent, no need for expanded
        //pero kapag gagamit ng .builder always wrap it sa sizedbox for height
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: SizedBox(
            height: 490,
            child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 80),
                itemBuilder: ((context, index) {
                  return Card(
                    color: const Color(0xff333436),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.book,
                            color: Colors.white,
                          ),
                          Text(
                            'Saved',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),
                  );
                })),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2f3130)),
              child: const Text('See more'),
            ),
          ),
        ),
        SizedBox(
          height: 170,
          child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: ((context, index) {
                return ListTile(
                  onTap: () {},
                  title: const Text(
                    'Community resources',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                      onPressed: (() {}),
                      icon: const Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: Colors.grey,
                      )),
                );
              })),
        ),
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: ElevatedButton(
              onPressed: (() {}),
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xff2f3130)),
              child: const Text('Log out'),
            ),
          ),
        ),
      ],
    );
  }
}
