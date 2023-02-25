import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> notifDP = [
      'https://scontent.fmnl8-2.fna.fbcdn.net/v/t1.6435-9/174137974_301620031322836_4252739009510773640_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGzMsi2rZcYMxmSmK6TVBFuOWUXB6ZhPX85ZRcHpmE9fyZgENCAurhIaMptNtvxYq0mW-b7FCR0yz4xyLrHN-9L&_nc_ohc=F0LAY6hl8m0AX8Lj8dX&_nc_ht=scontent.fmnl8-2.fna&oh=00_AfBt1zB1Z8rFWRwGc9lIDj2O7uQ_hwPZ6haOhijU4oVHaA&oe=6420AA8E',
      'https://scontent.fmnl8-3.fna.fbcdn.net/v/t39.30808-6/279881788_365401088948155_1845054526541897956_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeH2EYmKVg1xlYZ_JkJnYhuyGy8hYxUL474bLyFjFQvjvtnLRtz9AYTxVBrwL1tPioKJodiL3-XRAtSFLt_Dpl5P&_nc_ohc=EBypOobMIy0AX87NsFv&_nc_ht=scontent.fmnl8-3.fna&oh=00_AfDuOYLcX6L1SOvOug6DnQMY1po4SoI7m95zyHYf_m8S9g&oe=63FD8572',
      'https://scontent.fmnl8-1.fna.fbcdn.net/v/t39.30808-6/326946762_741856830614618_4743125680415505436_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEVphMN3c16Pfdz0i82kl7vFcotaGJc1AIVyi1oYlzUAt33hPuBjOU_Q_E86lEBQZGqMRL5y9kOHhyCkD7hfSRt&_nc_ohc=49uXfTQoDZgAX95T8z6&_nc_ht=scontent.fmnl8-1.fna&oh=00_AfBTy_OU8IX-F_2g3eagI36Z75oF7ttEV5BLW8Aipf1P-Q&oe=63FE6205',
      'https://scontent.fmnl8-1.fna.fbcdn.net/v/t39.30808-6/310597694_489273299879875_4109920818108024120_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeG5AUKU1WHAb0QFj6fln-2uwYGQgoQ19EfBgZCChDX0RxT-LWtROVfsdxR-FyocMlFBQFv6Qu39Sh1eWGhujMfY&_nc_ohc=YMEmozvJsvwAX9iF11H&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl8-1.fna&oh=00_AfC-JaVOt74eh7DNqTFRBwKW-FWj3CL2NaK1UTN7o3ajNA&oe=63FE19C7',
      'https://scontent.fmnl8-3.fna.fbcdn.net/v/t1.6435-9/188073396_332183988270494_6128439285557470659_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFG-dRkyxcBYeUQgJm8g668rzX5qqvYpL2vNfmqq9ikvU8xqv6sDiuO4wj_oxKt1ah8z6Z4LKvxX-P5Xh6YS3u3&_nc_ohc=WJo4jvw75CMAX-yKWk_&_nc_ht=scontent.fmnl8-3.fna&oh=00_AfDLfLObG3z5G_CvnyoWO4nIScNFLVelv-oxYCfHMlT4vw&oe=6420CEE7',
      'https://scontent.fmnl8-1.fna.fbcdn.net/v/t39.30808-6/313425233_5490427567736712_4881131182389330223_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGsYxUO2ti-10AxYD-U3neyX_zvZ0-Js5Vf_O9nT4mzla9jxfuB-YzQZroD6aGfT7En_oEefqmygA1KeGji8t60&_nc_ohc=LrqlfpqERcYAX9EQBtG&_nc_ht=scontent.fmnl8-1.fna&oh=00_AfDsJVV2Ze6Zzy6I3HEUThQlENJ_dUzZKB6Lg8ayufjlog&oe=63FE0061',
      'https://scontent.fmnl8-1.fna.fbcdn.net/v/t39.30808-6/277554236_4825645330823829_5739429015710178834_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeFweLBlnnjAP0ZHR_z8VAWlo2-5ECUShGyjb7kQJRKEbBEdFakjy5SEXf89kCO4l1fTgB71h5YCprqGB2tmWWIu&_nc_ohc=0Sq2gDxUoWYAX-o38eL&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl8-1.fna&oh=00_AfB654j023CJG2wAhLgDzZr2sup3Bq1MJ7iTcngh59WRxQ&oe=63FED129',
      'https://scontent.fmnl8-3.fna.fbcdn.net/v/t39.30808-6/301359087_3389735184593212_7141487308990861700_n.jpg?stp=cp6_dst-jpg&_nc_cat=107&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeGlW-BEWoa_iK_4vF-mhtMctoGNpWJ8c5m2gY2lYnxzmckEAWrvcLMSlf_8R0t7S2VfikgZgZKpIpRlMNzJp7pR&_nc_ohc=aKNJy3PWkd8AX_7DkYr&tn=R7mrce8hstjuDFOt&_nc_ht=scontent.fmnl8-3.fna&oh=00_AfBE33tXtJFSzKhTO3tN4C4KB2017mIT6LaXq8V7_Wdg4w&oe=63FF022E'
    ];
    List<String> names = [
      'Razzie Binx',
      'ICT Literacy and Competency Development',
      'Jan Salvador',
      'Kuya Dev',
      'KingFB',
      'Carl Andrew Castanas',
      'Bryl',
      'Albert'
    ];
    List<Icon> icons = [
      const Icon(
        Icons.video_call_rounded,
        color: Colors.white,
        size: 15,
      ),
      const Icon(
        Icons.ondemand_video_outlined,
        size: 15,
        color: Colors.white,
      ),
      const Icon(
        Icons.groups_rounded,
        size: 15,
        color: Colors.white,
      ),
      const Icon(
        Icons.groups_rounded,
        size: 15,
        color: Colors.white,
      ),
      const Icon(
        Icons.video_call,
        size: 15,
        color: Colors.white,
      ),
      const Icon(
        Icons.comment_rounded,
        size: 15,
        color: Colors.white,
      ),
      const Icon(
        Icons.comment_rounded,
        size: 15,
        color: Colors.white,
      ),
      const Icon(
        Icons.favorite,
        size: 15,
        color: Colors.white,
      )
    ];
    List<String> activity = [
      'was live: "Sentinels vs FNATIC',
      'posted a new video',
      'posted in Flutter Philippines Community',
      'posted in Tech Career Shifter Philippines',
      'was live: "Hanap Eabab Simulator',
      'has a new post. Leave your thoughts',
      'changed his profile',
      'reacted to a photo you shared'
    ];
    List<Color> colors = [
      Colors.red,
      Colors.blue,
      Colors.blue,
      Colors.blue,
      Colors.red,
      Colors.red,
      Colors.blue,
      Colors.red,
    ];
    List<int> timeNotif = [2, 23, 15, 10, 5, 7, 12, 17];
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Notifications',
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
                      Icons.search,
                      color: Colors.white,
                    ))
              ],
            )
          ],
        ),
      ),
      ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: names.length,
          itemBuilder: ((context, index) {
            return ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(notifDP[index]),
                child: Stack(
                  children: [
                    Positioned(
                      left: 50,
                      top: 35,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: colors[index],
                        child: icons[index],
                      ),
                    )
                  ],
                ),
              ),
              contentPadding: const EdgeInsets.all(10),
              trailing: IconButton(
                  onPressed: (() {}),
                  icon: const Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.white,
                  )),
              title: Text(
                '${names[index]} ${activity[index]}',
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                '${timeNotif[index]} hours ago',
                style: const TextStyle(color: Colors.grey),
              ),
            );
          }))
    ]);
  }
}
