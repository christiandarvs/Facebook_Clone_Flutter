import 'package:flutter/material.dart';

class ImgGridPost extends StatelessWidget {
  final String name;
  final String dp;
  final int datePosted;
  final List<String> imgURL;
  final double postHeight;
  const ImgGridPost(
      {super.key,
      required this.name,
      required this.dp,
      required this.datePosted,
      required this.imgURL,
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
                  '$datePosted hrs',
                  style: const TextStyle(color: Colors.grey),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.public,
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
              padding: const EdgeInsets.symmetric(
                horizontal: 12.0,
              ),
              child: SizedBox(
                  height: 360,
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
