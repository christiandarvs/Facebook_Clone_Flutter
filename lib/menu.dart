import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    List<Icon> optionsIcons = [
      const Icon(
        Icons.bookmark,
        color: Colors.deepPurple,
      ),
      const Icon(
        Icons.groups_rounded,
        color: Colors.blue,
      ),
      const Icon(
        Icons.people,
        color: Colors.lightBlue,
      ),
      const Icon(
        Icons.favorite,
        color: Colors.red,
      ),
      const Icon(
        Icons.ondemand_video_rounded,
        color: Colors.blue,
      ),
      const Icon(
        Icons.feed_rounded,
        color: Colors.blue,
      ),
      const Icon(
        Icons.store_mall_directory,
        color: Colors.lightBlue,
      ),
      const Icon(
        Icons.history,
        color: Colors.blue,
      ),
      const Icon(
        Icons.outlined_flag_outlined,
        color: Colors.orange,
      ),
      const Icon(
        Icons.video_library,
        color: Colors.orange,
      ),
      const Icon(
        Icons.calendar_month,
        color: Colors.blue,
      ),
      const Icon(
        Icons.sports_esports,
        color: Colors.blue,
      )
    ];
    List<String> options = [
      'Saved',
      'Groups',
      'Friends',
      'Dating',
      'Videos on watch',
      'Feeds',
      'Marketplace',
      'Memories',
      'Pages',
      'Reels',
      'Events',
      'Gaming',
    ];
    List<String> optionTitles = [
      'Community resource',
      'Help & support',
      'Settings & privacy'
    ];
    List<Icon> moreOptionIcons = [
      const Icon(
        Icons.favorite,
        color: Colors.grey,
      ),
      const Icon(
        Icons.question_answer_outlined,
        color: Colors.grey,
      ),
      const Icon(
        Icons.settings,
        color: Colors.grey,
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
                  return InkWell(
                    onTap: () {},
                    child: Card(
                      color: const Color(0xff333436),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            optionsIcons[index],
                            Text(
                              options[index],
                              style: const TextStyle(color: Colors.white),
                            )
                          ],
                        ),
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
                  leading: moreOptionIcons[index],
                  onTap: () {},
                  title: Text(
                    optionTitles[index],
                    style: const TextStyle(color: Colors.white),
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
              onPressed: (() {
                SystemNavigator.pop();
              }),
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
