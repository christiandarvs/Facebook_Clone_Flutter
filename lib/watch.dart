import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class Watch extends StatelessWidget {
  const Watch({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> titles = [
      'For You',
      'Live',
      'Gaming',
      'Reels',
      'Following',
      'Saved'
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
                'Watch',
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
                        Icons.person,
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
        SizedBox(
          height: 50,
          child: ListView.builder(
              itemCount: 6,
              scrollDirection: Axis.horizontal,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10),
                  child: Text(
                    titles[index],
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17),
                  ),
                );
              })),
        ),
        const PostWithVid(
            name: 'W Gameplay PH',
            imgURL:
                'https://i.ytimg.com/vi/brk6VyW2noY/hq720.jpg?sqp=-oaymwEcCNAFEJQDSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLBEhJXYHMuB0XMN-YoF7Zzg41BZ2w',
            datePosted: 1,
            dp: 'https://scontent.fmnl3-2.fna.fbcdn.net/v/t1.6435-9/132199909_228356328661694_8977393409644767394_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeF-izLH6mXI_JvDtoE2Th3FSrKlxDHaumJKsqXEMdq6Yiwwu6TSFjhcW9pAjtFTi1iCsydNQOmbL4mLaC4aSOSc&_nc_ohc=gqskeOeoQJcAX8RGqCX&_nc_ht=scontent.fmnl3-2.fna&oh=00_AfAJf-UlSwvP0y1Yd3Wv5MN5GblW5vteS0VRn1H10R40bA&oe=64200756',
            postHeight: 415),
        const SizedBox(
          height: 10,
        ),
        const PostWithVid(
            name: 'Project Nightfall',
            imgURL: 'https://i.ytimg.com/vi/F5kBP1kOKzI/maxresdefault.jpg',
            datePosted: 5,
            dp: 'https://scontent.fmnl3-2.fna.fbcdn.net/v/t1.6435-9/199162610_346370016860149_472751492870160455_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeHs8Wr4xAfEKc7KaRuTQ9fjeVKKhBlmCFR5UoqEGWYIVCLiBdIRmZm3dbgQhOFM7wQB3R-TlaJZcl04ulLw4PUR&_nc_ohc=X55NytKw8a0AX8pCWID&_nc_ht=scontent.fmnl3-2.fna&oh=00_AfCZaDmjisq4_lsfq-tddt6Z3Ag06qXRxA-WkWmrQVn1XQ&oe=641FFC28',
            postHeight: 415),
        const SizedBox(
          height: 10,
        ),
        const PostWithVid(
            name: '5-Minute Crafts',
            imgURL: 'https://i.ytimg.com/vi/H7ApA8E42jM/maxresdefault.jpg',
            datePosted: 1,
            dp: 'https://scontent.fmnl3-2.fna.fbcdn.net/v/t39.30808-6/296787303_3694236854052206_3859153378381456912_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFWCvkVK4H0vUapCV-w4KAkXEWmO3nlCNFcRaY7eeUI0ed6rS5Q_cluI9lHT1AeyP06Dk2WeZB_vfxBUdfiocbE&_nc_ohc=RbjL6WqFErsAX_4LQ6l&_nc_ht=scontent.fmnl3-2.fna&oh=00_AfB0_Cntau0TWi3miXBbMFbLTgk28nKVQeVmNofX2RTABg&oe=63FCF107',
            postHeight: 410)
      ],
    );
  }
}

class PostWithVid extends StatelessWidget {
  final String name;
  final String imgURL;
  final int datePosted;
  final String dp;
  final double postHeight;
  const PostWithVid(
      {super.key,
      required this.name,
      required this.imgURL,
      required this.datePosted,
      required this.dp,
      required this.postHeight});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff242527),
      height: postHeight,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(color: Colors.white),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const CircleAvatar(
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
              children: [
                Text(
                  '${datePosted}d',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.people_alt,
                  color: Colors.grey,
                )
              ],
            ),
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(dp),
            ),
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
              child: Stack(children: [
                SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: Image.network(
                    alignment: Alignment.topCenter,
                    imgURL,
                    fit: BoxFit.cover,
                  ),
                ),
                const Positioned(
                  left: 160,
                  top: 100,
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                ),
                const Positioned(
                  bottom: 5,
                  right: 10,
                  child: OnSound(),
                )
              ])),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
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
          const Like()
        ],
      ),
    );
  }
}

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  bool liked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}

class OnSound extends StatefulWidget {
  const OnSound({super.key});

  @override
  State<OnSound> createState() => _OnSoundState();
}

class _OnSoundState extends State<OnSound> {
  bool playAudio = false;
  @override
  Widget build(BuildContext context) {
    return playAudio
        ? IconButton(
            onPressed: (() {
              setState(() {
                playAudio = !playAudio;
              });
            }),
            icon: const Icon(
              Icons.volume_up,
              color: Colors.white,
            ),
          )
        : IconButton(
            onPressed: (() {
              setState(() {
                playAudio = !playAudio;
              });
            }),
            icon: const Icon(
              Icons.volume_off,
              color: Colors.white,
            ),
          );
  }
}
