import 'package:flutter/material.dart';

class PostContent extends StatelessWidget {
  final String name;
  final String dp;
  final int datePosted;
  final String post;
  final double postHeight;
  const PostContent(
      {super.key,
      required this.name,
      required this.dp,
      required this.datePosted,
      required this.post,
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
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
            child: Text(
              post,
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
          ),
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
              thickness: 1,
              height: 10,
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
