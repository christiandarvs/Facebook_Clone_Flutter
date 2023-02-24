import 'package:flutter/material.dart';

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
